# Multicore SDK (MCSDK) Release Notes

## Overview

These are the release notes for the NXP **Multicore Software Development Kit (MCSDK)**.

| Item | Value |
|---|---|
| MCSDK version | **26.03.00** |
| Scope | Multicore middleware components and examples |
| Location in MCUXpresso SDK | `<MCUXpressoSDK_install_dir>/middleware/multicore/` |

The MCSDK is combined with the MCUXpresso SDK to provide a framework for developing multicore applications on NXP devices.

## What’s new

### Component updates

Review detailed changes per component:

- eRPC: [CHANGELOG](../../erpc/CHANGELOG.md)
- RPMSG-Lite: [CHANGELOG](../../rpmsg-lite/CHANGELOG.md)
- Multicore Manager (MCMGR): [CHANGELOG](../../mcmgr/CHANGELOG.md)

### Supported evaluation boards

Boards with enabled multicore example coverage in this release:

| Multicore examples |
|---|
| LPCXpresso55S69<br>FRDM-K32L3A6<br>MIMXRT1170-EVKB<br>MIMXRT1160-EVK<br>MIMXRT1180-EVK<br>MCX-N5XX-EVK<br>MCX-N9XX-EVK<br>FRDM-MCXN947<br>MIMXRT700-EVK<br>KW47-EVK<br>KW47-LOC<br>FRDM-MCXW72<br>MCX-W72-EVK<br>FRDM-IMXRT1186 |

## Development tools

The MCSDK is compiled and tested with the toolchains described in the MCUXpresso SDK documentation:

- https://mcuxpresso.nxp.com/mcuxsdk/latest/html/gsd/installation.html#toolchain

## Release contents

This table describes the release contents. Not all MCUXpresso SDK packages contain the full set of these components.

| Deliverable | Location |
|---|---|
| Multicore SDK location (`<MCSDK_dir>`) | `<MCUXpressoSDK_install_dir>/middleware/multicore/` |
| Documentation | `<MCSDK_dir>/mcuxsdk-doc/` |
| Embedded Remote Procedure Call (eRPC) | `<MCSDK_dir>/erpc/` |
| Multicore Manager (MCMGR) | `<MCSDK_dir>/mcmgr/` |
| RPMSG-Lite | `<MCSDK_dir>/rpmsg-lite/` |
| Multicore demo applications | `<MCUXpressoSDK_install_dir>/examples/multicore_examples/` |

## MCSDK component overview

Together, the MCSDK and the MCUXpresso SDK form a framework for developing software for NXP multicore devices. The MCSDK release includes:

- Embedded Remote Procedure Call (eRPC)
- Multicore Manager (MCMGR)
- Remote Processor Messaging – Lite (RPMSG-Lite)

The MCSDK also includes documentation and demo applications for multicore communication.

## Demo applications

The demo applications demonstrate MCSDK component usage on supported development boards.

Examples are located under:

- Multicore: `<MCUXpressoSDK_install_dir>/examples/multicore_examples/`

| Multicore examples |
|---|
| `freertos_message_buffers`<br>`hello_world`<br>`multicore_manager`<br>`rpmsg_lite_pingpong`<br>`rpmsg_lite_pingpong_rtos`<br>`rpmsg_lite_pingpong_dsp`<br>`rpmsg_lite_pingpong_tzm` |
