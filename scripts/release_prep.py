#!/usr/bin/env python3
#
# Copyright 2025 NXP
#
# SPDX-License-Identifier: BSD-3-Clause
#

import os
import re
import sys
import datetime
from pathlib import Path


def find_and_replace_version(directory, current_version, new_version, changelog_path, file_extensions=None):
    """
    Find and replace all occurrences of current_version with new_version in all files
    within the specified directory that have the given file extensions, excluding the changelog.

    Args:
        directory (str): Directory to search in
        current_version (str): Current version to find
        new_version (str): New version to replace with
        changelog_path (str): Path to changelog file to exclude from replacement
        file_extensions (list): List of file extensions to process (None means all files)

    Returns:
        tuple: (list of modified files, bool indicating if any files were modified)
    """
    modified_files = []
    any_modified = False

    # Convert changelog_path to absolute path for proper comparison
    changelog_abs_path = os.path.abspath(changelog_path)

    # Prepare version strings without 'v' prefix
    current_version_no_v = current_version.lstrip('v')
    new_version_no_v = new_version.lstrip('v')

    for root, _, files in os.walk(directory):
        for file in files:
            # Skip files that don't match the extensions if specified
            if file_extensions and not any(file.endswith(ext) for ext in file_extensions):
                continue

            file_path = os.path.join(root, file)
            file_abs_path = os.path.abspath(file_path)

            # Skip the changelog file
            if file_abs_path == changelog_abs_path:
                print(f"Skipping version replacement in changelog: {file_path}")
                continue

            # Skip binary files and very large files
            try:
                if os.path.getsize(file_path) > 10 * 1024 * 1024:  # Skip files larger than 10MB
                    continue

                with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                    content = f.read()

                # Skip files that don't contain any version string
                if current_version not in content and current_version_no_v not in content:
                    continue

                new_content = content
                file_modified = False

                # First replace all occurrences with the 'v' prefix
                if current_version in new_content:
                    new_content = new_content.replace(current_version, new_version)
                    file_modified = True

                # Then check for and replace any occurrences without the 'v' prefix
                if current_version_no_v in new_content:
                    # Print warning if we found version without 'v' prefix
                    print(f"Warning: Found version without 'v' prefix in {file_path}")
                    new_content = new_content.replace(current_version_no_v, new_version_no_v)
                    file_modified = True

                if file_modified:
                    with open(file_path, 'w', encoding='utf-8') as f:
                        f.write(new_content)

                    modified_files.append(file_path)
                    any_modified = True
                    print(f"Updated version in {file_path}")
            except (UnicodeDecodeError, IOError, PermissionError):
                # Skip files that can't be read as text
                continue

    return modified_files, any_modified


def update_changelog(changelog_path, current_version, new_version):
    """
    Update the changelog:
    1. Replace [Unreleased] with version and timestamp in the content
    2. Update the comparison links at the bottom of the file
    """
    if not os.path.exists(changelog_path):
        print(f"Warning: Changelog file not found at {changelog_path}")
        return False

    # Use the requested date format: DD-MMM-YYYY (e.g., 13-Jan-2025)
    # current_date = datetime.datetime.now().strftime("%d-%b-%Y")

    with open(changelog_path, 'r', encoding='utf-8', errors='ignore') as file:
        content = file.read()

    # Replace [Unreleased] with the version and date in the main content
    updated_content = re.sub(r'\[Unreleased\]',
                           f'[{new_version}]',
                           content,
                           count=1,  # Only replace the first occurrence
                           flags=re.IGNORECASE)

    # Update the comparison links at the bottom of the file
    # Use a more generic pattern that will work with any GitHub repo URL
    unreleased_link_pattern = r'\[Unreleased\]: https://github\.com/[^/]+/[^/]+/compare/v' + re.escape(current_version.lstrip('v')) + r'\.\.\.HEAD'

    # Check if we found the expected pattern
    unreleased_match = re.search(unreleased_link_pattern, updated_content, flags=re.IGNORECASE)
    if unreleased_match:
        # Extract the base URL to preserve the exact repository path
        full_unreleased_link = unreleased_match.group(0)
        base_url = re.search(r'(https://github\.com/[^/]+/[^/]+/compare/)', full_unreleased_link)

        if base_url:
            repo_url = base_url.group(1)
            # Replace with new version link and add new unreleased link
            # Preserve the original case of "Unreleased" from the matched text
            unreleased_text = re.search(r'\[(Unreleased|unreleased)\]', full_unreleased_link, re.IGNORECASE).group(1)

            version_link = f'[{new_version}]: {repo_url}v{current_version.lstrip("v")}...v{new_version.lstrip("v")}'
            new_unreleased_link = f'[{unreleased_text}]: {repo_url}v{new_version.lstrip("v")}...HEAD'

            updated_content = re.sub(
                unreleased_link_pattern,
                f'{new_unreleased_link}\n{version_link}',
                updated_content,
                flags=re.IGNORECASE
            )
    else:
        print(f"Warning: Could not find Unreleased link pattern in changelog")
        # Try an alternative approach - find any GitHub comparison link
        links_section_pattern = r'(\[.+?\]: https://github\.com/[^/]+/[^/]+/compare/.+?\.\.\.v.+)'
        first_link_match = re.search(links_section_pattern, updated_content)
        if first_link_match:
            # Get the first link to extract the repo URL
            first_link = first_link_match.group(1)
            repo_url_match = re.search(r'(https://github\.com/[^/]+/[^/]+/compare/)', first_link)

            if repo_url_match:
                repo_url = repo_url_match.group(1)
                # Try to find the original case of "Unreleased" in the document
                unreleased_match = re.search(r'\[(Unreleased|unreleased)\]', updated_content, re.IGNORECASE)
                unreleased_text = unreleased_match.group(1) if unreleased_match else "Unreleased"

                version_link = f'[{new_version}]: {repo_url}v{current_version.lstrip("v")}...v{new_version.lstrip("v")}'
                new_unreleased_link = f'[{unreleased_text}]: {repo_url}v{new_version.lstrip("v")}...HEAD'

                # Add the new links before the first link
                updated_content = updated_content.replace(
                    first_link,
                    f'{new_unreleased_link}\n{version_link}\n{first_link}'
                )

    if updated_content != content:
        with open(changelog_path, 'w', encoding='utf-8') as file:
            file.write(updated_content)
        return True

    return False



def detect_current_version(directory):
    """
    Try to detect the current version by:
    1. Finding the first version entry in the CHANGELOG.md content
    2. Then looking in rpmsg_lite.h if not found in changelog
    3. Finally searching through other files as a fallback

    Handles versions both with and without a leading 'v' prefix,
    and with or without dates after the version header.
    """
    # First try to find the version from the CHANGELOG.md content
    changelog_path = os.path.join(directory, "CHANGELOG.md")
    if os.path.exists(changelog_path):
        try:
            with open(changelog_path, 'r', encoding='utf-8', errors='ignore') as file:
                content = file.read()

            # First try to match headers like "## [v4.1.6]" or "## [4.1.6]" (without date)
            version_match = re.search(r'##\s+\[(v?)([0-9]+\.[0-9]+\.[0-9]+)\](\s+|$|\n)', content)
            if version_match:
                # Return with the 'v' prefix if it exists
                prefix = version_match.group(1)
                version = version_match.group(2)
                return f"{prefix}{version}"

            # If not found, try to match headers with dates like "## [v5.1.3] - 13-Jan-2025" or "## [5.1.3] - 13-Jan-2025"
            version_match = re.search(r'##\s+\[(v?)([0-9]+\.[0-9]+\.[0-9]+)\]\s+-\s+', content)
            if version_match:
                prefix = version_match.group(1)
                version = version_match.group(2)
                return f"{prefix}{version}"
        except (UnicodeDecodeError, IOError):
            print("Warning: Could not read CHANGELOG.md")

    # If not found in changelog, try the header file
    header_path = os.path.join(directory, "mcuxsdk/middleware/multicore/rpmsg-lite/lib/include/rpmsg_lite.h")

    if os.path.exists(header_path):
        try:
            with open(header_path, 'r', encoding='utf-8', errors='ignore') as file:
                content = file.read()

            # Match with or without 'v' prefix
            match = re.search(r'#define\s+RL_VERSION\s+"(v?)([^"]+)"', content)
            if match:
                prefix = version_match.group(1)
                version = version_match.group(2)
                return f"{prefix}{version}"
        except (UnicodeDecodeError, IOError):
            print("Warning: Could not read rpmsg_lite.h")

    # If still not found, look for version patterns in all header files
    # Look for patterns like VERSION="5.1.3" or VERSION="v5.1.3"
    version_pattern = re.compile(r'VERSION["\s:=]+(v?)([0-9]+\.[0-9]+\.[0-9]+)')

    for root, _, files in os.walk(directory):
        for file in files:
            if file.endswith('.h') or file.endswith('.c') or file.endswith('.cpp'):
                file_path = os.path.join(root, file)
                try:
                    with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                        content = f.read()

                    match = version_pattern.search(content)
                    if match:
                        return match.group(2)
                except (UnicodeDecodeError, IOError):
                    continue

    return None

def update_mcmgr_version_enum(directory, new_version):
    """
    Updates the MCMGR version enum in mcmgr.h
    Converts version format like "5.1.3" to hexadecimal format like 0x00050103
    """
    mcmgr_path = os.path.join(directory, "inc/mcmgr.h")
    if not os.path.exists(mcmgr_path):
        print(f"Warning: MCMGR header file not found at {mcmgr_path}")
        return False

    try:
        # Parse the new version string (e.g., "5.1.3" or "v5.1.3")
        # Remove 'v' prefix if present
        version_str = new_version.lstrip('v')
        version_parts = version_str.split('.')
        if len(version_parts) < 3:
            print(f"Warning: Version format {new_version} not suitable for MCMGR enum conversion")
            return False

        # Get major, minor, patch values
        major = int(version_parts[0])
        minor = int(version_parts[1])
        patch = int(version_parts[2])

        # Convert to hexadecimal format (e.g., 0x00050103 for "5.1.3")
        hex_version = f"0x00{major:02x}{minor:02x}{patch:02x}"

        # Read the file
        with open(mcmgr_path, 'r', encoding='utf-8', errors='ignore') as file:
            content = file.read()

        # Replace the version enum value
        updated_content = re.sub(
            r'kMCMGR_Version\s*=\s*0x[0-9a-fA-F]{8}',
            f'kMCMGR_Version = {hex_version}',
            content
        )

        if updated_content != content:
            # Write back to the file
            with open(mcmgr_path, 'w', encoding='utf-8') as file:
                file.write(updated_content)
            print(f"Updated MCMGR version enum to {hex_version} in {mcmgr_path}")
            return True

        return False

    except (ValueError, UnicodeDecodeError, IOError) as e:
        print(f"Error updating MCMGR version enum: {str(e)}")
        return False


def main():
    if len(sys.argv) < 2:
        print("Usage: python release_prep.py <new_version> [directory] [changelog_path]")
        print("  <new_version>: The new version number to set")
        print("  [directory]: Optional directory to search (default: current directory)")
        print("  [changelog_path]: Optional path to changelog file (default: CHANGELOG.md in directory)")
        print("\nExamples:")
        print("  python release_prep.py v5.2.0 ../rpmsg-lite")
        print("  python release_prep.py v5.0.0 ../mcmgr")
        sys.exit(1)

    new_version = sys.argv[1]

    # Define paths
    directory = sys.argv[2] if len(sys.argv) >= 3 else os.getcwd()
    changelog_path = (
        sys.argv[3]
        if len(sys.argv) >= 4
        else os.path.join(directory, "CHANGELOG.md")
    )

    # Detect current version
    current_version = detect_current_version(directory)

    if not current_version:
        print("Error: Could not automatically detect current version.")
        current_version = input("Please enter the current version manually: ")
        if not current_version:
            sys.exit(1)

    print(f"Current version: {current_version}")
    print(f"New version: {new_version}")

    # Confirm with the user
    confirm = input(f"This will update all occurrences of '{current_version}' to '{new_version}' in '{directory}'. Continue? (y/n): ")
    if confirm.lower() != 'y':
        print("Operation cancelled.")
        sys.exit(0)

    # Update version in all files EXCEPT the changelog
    processed_files, any_modified = find_and_replace_version(directory, current_version, new_version, changelog_path)

    # Update the MCMGR version enum if present
    mcmgr_updated = update_mcmgr_version_enum(directory, new_version)

    # Update changelog - only converting [unreleased] to new version
    changelog_updated = update_changelog(changelog_path, current_version, new_version)

    # Summary
    if any_modified:
        print(f"\n✅ Successfully updated version in {len(processed_files)} files:")
        for file in processed_files:
            print(f"  - {file}")
    else:
        print(f"\n❌ No files were updated with the new version.")

    if changelog_updated:
        # Format the current date the same way it appears in the changelog
        formatted_date = datetime.datetime.now().strftime("%d-%b-%Y")
        print(f"\n✅ Successfully updated changelog at {changelog_path}")
        print(f"  - [unreleased] section renamed to [{new_version}] - {formatted_date}")
        print(f"  - Added new [unreleased] link for future development")
        print(f"  - Added comparison link for version {new_version}")
    else:
        print(f"\n⚠️ Changelog not updated. File may not exist or [unreleased] section not found.")

    if any_modified and changelog_updated:
        print(f"\nRelease preparation for version {new_version} completed successfully!")
    else:
        print("\nRelease preparation completed with warnings or errors.")


if __name__ == "__main__":
    main()
