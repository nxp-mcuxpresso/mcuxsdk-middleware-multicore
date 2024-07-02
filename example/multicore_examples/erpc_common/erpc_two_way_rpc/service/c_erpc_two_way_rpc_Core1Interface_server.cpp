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


#include <new>
#include "c_erpc_two_way_rpc_Core1Interface_server.h"
#include "erpc_two_way_rpc_Core1Interface_server.hpp"
#include "erpc_manually_constructed.hpp"

using namespace erpc;
using namespace std;
using namespace erpcShim;


class Core1Interface_server: public Core1Interface_interface
{
    public:
        virtual ~Core1Interface_server() {};


        void increaseNumber(uint32_t * number)
        {
            ::increaseNumber(number);
        }
};

ERPC_MANUALLY_CONSTRUCTED_STATIC(Core1Interface_service, s_Core1Interface_service);
ERPC_MANUALLY_CONSTRUCTED_STATIC(Core1Interface_server, s_Core1Interface_server);

erpc_service_t create_Core1Interface_service(void)
{
    erpc_service_t service;

#if ERPC_ALLOCATION_POLICY == ERPC_ALLOCATION_POLICY_DYNAMIC
    service = new (nothrow) Core1Interface_service(new (nothrow)Core1Interface_server());
#else
    if (s_Core1Interface_service.isUsed())
    {
        service = NULL;
    }
    else
    {
        s_Core1Interface_server.construct();
        s_Core1Interface_service.construct(s_Core1Interface_server.get());
        service = s_Core1Interface_service.get();
    }
#endif

    return service;
}

void destroy_Core1Interface_service(erpc_service_t service)
{
#if ERPC_ALLOCATION_POLICY == ERPC_ALLOCATION_POLICY_DYNAMIC
    if (service)
    {
        delete (Core1Interface_server *)(((Core1Interface_service *)service)->getHandler());
        delete (Core1Interface_service *)service;
    }
#else
    (void)service;
    erpc_assert(service == s_Core1Interface_service.get());
    s_Core1Interface_service.destroy();
    s_Core1Interface_server.destroy();
#endif
}

