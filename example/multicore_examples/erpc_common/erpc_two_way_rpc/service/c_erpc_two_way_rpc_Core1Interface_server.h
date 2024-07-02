/*
 * Copyright 2018,2023 NXP
 * All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

/*
 * Generated by erpcgen 1.13.0 on Thu Apr 18 09:37:38 2024.
 *
 * AUTOGENERATED - DO NOT EDIT
 */


#if !defined(_c_erpc_two_way_rpc_Core1Interface_server_h_)
#define _c_erpc_two_way_rpc_Core1Interface_server_h_

#include "erpc_two_way_rpc_Core1Interface_common.h"

#if defined(__cplusplus)
extern "C"
{
#endif

typedef void * erpc_service_t;

#if !defined(ERPC_FUNCTIONS_DEFINITIONS_CORE1INTERFACE)
#define ERPC_FUNCTIONS_DEFINITIONS_CORE1INTERFACE


/*! @brief Core1Interface identifiers */
enum _Core1Interface_ids
{
    kCore1Interface_service_id = 2,
    kCore1Interface_increaseNumber_id = 1,
};

/*! Core1 interface */
//! @name Core1Interface
//@{
/*! Function for increasing given number by 1. Implementation on Core0 */
void increaseNumber(uint32_t * number);
//@}


#endif // ERPC_FUNCTIONS_DEFINITIONS_CORE1INTERFACE

/*! @brief Return Core1Interface_service service object. */
erpc_service_t create_Core1Interface_service(void);

/*! @brief Destroy Core1Interface_service service object. */
void destroy_Core1Interface_service(erpc_service_t service);


#if defined(__cplusplus)
}
#endif

#endif // _c_erpc_two_way_rpc_Core1Interface_server_h_
