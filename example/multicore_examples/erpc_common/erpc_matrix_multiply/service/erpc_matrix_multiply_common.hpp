/*
 * Copyright (c) 2014-2016, Freescale Semiconductor, Inc.
 * Copyright 2016 NXP
 * All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

/*
 * Generated by erpcgen 1.13.0 on Thu Apr 18 09:37:38 2024.
 *
 * AUTOGENERATED - DO NOT EDIT
 */


#if !defined(_erpc_matrix_multiply_common_hpp_)
#define _erpc_matrix_multiply_common_hpp_


#include <cstddef>
#include <cstdint>

#include "erpc_version.h"

#if 11300 != ERPC_VERSION_NUMBER
#error "The generated shim code version is different to the rest of eRPC code."
#endif


#if !defined(ERPC_TYPE_DEFINITIONS_ERPC_MATRIX_MULTIPLY)
#define ERPC_TYPE_DEFINITIONS_ERPC_MATRIX_MULTIPLY

// Aliases data types declarations
/*! This is the matrix array type. The dimension has to be the same as the
    matrix size const. Do not forget to re-generate the erpc code once the
    matrix size is changed in the erpc file */
typedef int32_t Matrix[5][5];

// Constant variable declarations
/*! This const defines the matrix size. The value has to be the same as the
    Matrix array dimension. Do not forget to re-generate the erpc code once the
    matrix size is changed in the erpc file */
extern const int32_t matrix_size;

#endif // ERPC_TYPE_DEFINITIONS_ERPC_MATRIX_MULTIPLY


#endif // _erpc_matrix_multiply_common_hpp_
