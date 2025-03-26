#
# Copyright 2024-2025 NXP
#
# SPDX-License-Identifier: BSD-3-Clause
#

if (CONFIG_MCUX_COMPONENT_middleware.multicore.remoteproc)
    mcux_add_include(
        INCLUDES .
    )

    mcux_add_source(
        SOURCES remoteproc.h
    )
endif()

if (CONFIG_MCUX_COMPONENT_middleware.multicore.remoteproc.empty_rsc_table)
    mcux_add_source(
        SOURCES empty_rsc_table.c
    )
endif()
