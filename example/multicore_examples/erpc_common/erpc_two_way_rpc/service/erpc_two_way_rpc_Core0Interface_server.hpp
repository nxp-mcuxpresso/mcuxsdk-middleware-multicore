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


#if !defined(_erpc_two_way_rpc_Core0Interface_server_hpp_)
#define _erpc_two_way_rpc_Core0Interface_server_hpp_

#include "erpc_two_way_rpc_Core0Interface_interface.hpp"

#include "erpc_server.hpp"
#include "erpc_codec.hpp"

#if 11300 != ERPC_VERSION_NUMBER
#error "The generated shim code version is different to the rest of eRPC code."
#endif


namespace erpcShim
{

/*!
 * @brief Service subclass for Core0Interface.
 */
class Core0Interface_service : public erpc::Service
{
public:
    Core0Interface_service(Core0Interface_interface *_Core0Interface_interface);

    virtual ~Core0Interface_service();

    /*! @brief return service interface handler. */
    Core0Interface_interface* getHandler(void);

    /*! @brief Call the correct server shim based on method unique ID. */
    virtual erpc_status_t handleInvocation(uint32_t methodId, uint32_t sequence, erpc::Codec * codec, erpc::MessageBufferFactory *messageFactory, erpc::Transport * transport);

private:
    Core0Interface_interface *m_handler;
    /*! @brief Server shim for setGetNumberFunction of Core0Interface interface. */
    erpc_status_t setGetNumberFunction_shim(erpc::Codec * codec, erpc::MessageBufferFactory *messageFactory, erpc::Transport * transport, uint32_t sequence);

    /*! @brief Server shim for getGetNumberFunction of Core0Interface interface. */
    erpc_status_t getGetNumberFunction_shim(erpc::Codec * codec, erpc::MessageBufferFactory *messageFactory, erpc::Transport * transport, uint32_t sequence);

    /*! @brief Server shim for nestedCallGetNumber of Core0Interface interface. */
    erpc_status_t nestedCallGetNumber_shim(erpc::Codec * codec, erpc::MessageBufferFactory *messageFactory, erpc::Transport * transport, uint32_t sequence);

    /*! @brief Server shim for getNumberFromCore1 of Core0Interface interface. */
    erpc_status_t getNumberFromCore1_shim(erpc::Codec * codec, erpc::MessageBufferFactory *messageFactory, erpc::Transport * transport, uint32_t sequence);
};

} // erpcShim


#endif // _erpc_two_way_rpc_Core0Interface_server_hpp_
