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


#include "c_erpc_matrix_multiply_client.h"
#include "erpc_matrix_multiply_client.hpp"
#include "erpc_manually_constructed.hpp"

using namespace erpc;
using namespace std;
using namespace erpcShim;


#if ERPC_ALLOCATION_POLICY == ERPC_ALLOCATION_POLICY_DYNAMIC
MatrixMultiplyService_client *s_MatrixMultiplyService_client = nullptr;
#else
ERPC_MANUALLY_CONSTRUCTED_STATIC(MatrixMultiplyService_client, s_MatrixMultiplyService_client);
#endif

void erpcMatrixMultiply(Matrix matrix1, Matrix matrix2, Matrix result_matrix)
{
    s_MatrixMultiplyService_client->erpcMatrixMultiply(matrix1, matrix2, result_matrix);
}

void initMatrixMultiplyService_client(erpc_client_t client)
{
#if ERPC_ALLOCATION_POLICY == ERPC_ALLOCATION_POLICY_DYNAMIC
    erpc_assert(s_MatrixMultiplyService_client == nullptr);
    s_MatrixMultiplyService_client = new MatrixMultiplyService_client(reinterpret_cast<ClientManager *>(client));
#else
    erpc_assert(!s_MatrixMultiplyService_client.isUsed());
    s_MatrixMultiplyService_client.construct(reinterpret_cast<ClientManager *>(client));
#endif
}

void deinitMatrixMultiplyService_client(void)
{
#if ERPC_ALLOCATION_POLICY == ERPC_ALLOCATION_POLICY_DYNAMIC
    if (s_MatrixMultiplyService_client != nullptr)
    {
        delete s_MatrixMultiplyService_client;
        s_MatrixMultiplyService_client = nullptr;
    }
#else
    s_MatrixMultiplyService_client.destroy();
#endif
}
