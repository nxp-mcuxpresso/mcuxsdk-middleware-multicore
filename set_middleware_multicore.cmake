include_guard(GLOBAL)


if (CONFIG_USE_middleware_multicore)
# Add set(CONFIG_USE_middleware_multicore true) in config.cmake to use this component

message("middleware_multicore component is included from ${CMAKE_CURRENT_LIST_FILE}.")


endif()


if (CONFIG_USE_middleware_multicore_remoteproc_loadscript)
# Add set(CONFIG_USE_middleware_multicore_remoteproc_loadscript true) in config.cmake to use this component

message("middleware_multicore_remoteproc_loadscript component is included from ${CMAKE_CURRENT_LIST_FILE}.")


endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_bm)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_bm true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_bm component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_baremetal)
  target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
      ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_bm.c
  )
endif()

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/environment/bm
)


endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_freertos)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_freertos true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_freertos component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_freertos-kernel)
  target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
      ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_freertos.c
      ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/rpmsg_queue.c
  )
endif()

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/environment/freertos
)


endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_xos)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_xos true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_xos component is included from ${CMAKE_CURRENT_LIST_FILE}.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_xos.c
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/rpmsg_queue.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/environment/xos
)

if(CONFIG_USE_COMPONENT_CONFIGURATION)
  message("===>Import configuration from ${CMAKE_CURRENT_LIST_FILE}")

  target_compile_definitions(${MCUX_SDK_PROJECT_NAME} PUBLIC
    -DFSL_RTOS_XOS=1
  )

endif()


endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_azurertos)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_azurertos true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_azurertos component is included from ${CMAKE_CURRENT_LIST_FILE}.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_threadx.c
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/rpmsg_queue.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/environment/threadx
)

if(CONFIG_USE_COMPONENT_CONFIGURATION)
  message("===>Import configuration from ${CMAKE_CURRENT_LIST_FILE}")

  target_compile_definitions(${MCUX_SDK_PROJECT_NAME} PUBLIC
    -DFSL_RTOS_THREADX=1
  )

endif()


endif()


if (CONFIG_USE_middleware_multicore_erpc_common)
# Add set(CONFIG_USE_middleware_multicore_erpc_common true) in config.cmake to use this component

message("middleware_multicore_erpc_common component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(((CONFIG_DEVICE_ID STREQUAL K32L2B11xxxxA OR CONFIG_DEVICE_ID STREQUAL K32L2B21xxxxA OR CONFIG_DEVICE_ID STREQUAL K32L2B31xxxxA OR CONFIG_DEVICE_ID STREQUAL K32L3A60xxx OR CONFIG_DEVICE_ID STREQUAL LPC5534 OR CONFIG_DEVICE_ID STREQUAL LPC5536 OR CONFIG_DEVICE_ID STREQUAL LPC55S36 OR CONFIG_DEVICE_ID STREQUAL LPC55S69 OR CONFIG_DEVICE_ID STREQUAL LPC55S66 OR CONFIG_DEVICE_ID STREQUAL MIMXRT1165xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1166xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1173xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1175xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1176xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx OR CONFIG_DEVICE_ID STREQUAL KW45B41Z52xxxA OR CONFIG_DEVICE_ID STREQUAL KW45B41Z53xxxA OR CONFIG_DEVICE_ID STREQUAL KW45B41Z82xxxA OR CONFIG_DEVICE_ID STREQUAL KW45B41Z83xxxA OR CONFIG_DEVICE_ID STREQUAL MCXN236 OR CONFIG_DEVICE_ID STREQUAL MCXN946 OR CONFIG_DEVICE_ID STREQUAL MCXN947 OR CONFIG_DEVICE_ID STREQUAL MCXN546 OR CONFIG_DEVICE_ID STREQUAL MCXN547 OR CONFIG_DEVICE_ID STREQUAL MIMXRT595S OR CONFIG_DEVICE_ID STREQUAL MIMXRT633S OR CONFIG_DEVICE_ID STREQUAL MIMXRT685S OR CONFIG_DEVICE_ID STREQUAL MCIMX7U3xxxxx OR CONFIG_DEVICE_ID STREQUAL MCIMX7U5xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMX8UD3xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX8UD5xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX8UD7xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX8US3xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX8US5xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX9301xxxxD OR CONFIG_DEVICE_ID STREQUAL MIMX9302xxxxD OR CONFIG_DEVICE_ID STREQUAL MIMX9311xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9312xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9321xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9322xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9331xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9332xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9351xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9352xxxxM OR CONFIG_DEVICE_ID STREQUAL MCXC444 OR CONFIG_DEVICE_ID STREQUAL MCXC242) OR (CONFIG_BOARD STREQUAL frdmk22f OR CONFIG_BOARD STREQUAL frdmk32l2b OR CONFIG_BOARD STREQUAL evkmcimx7ulp OR CONFIG_BOARD STREQUAL frdmk32l3a6 OR CONFIG_BOARD STREQUAL lpcxpresso55s69 OR CONFIG_BOARD STREQUAL lpcxpresso55s36 OR CONFIG_BOARD STREQUAL evkmimxrt1160 OR CONFIG_BOARD STREQUAL evkmimxrt1170 OR CONFIG_BOARD STREQUAL evkbmimxrt1170 OR CONFIG_BOARD STREQUAL evkmimxrt685 OR CONFIG_BOARD STREQUAL evkmimxrt1060 OR CONFIG_BOARD STREQUAL evkmimxrt1180 OR CONFIG_BOARD STREQUAL mcxn9xxevk OR CONFIG_BOARD STREQUAL mcxn5xxevk OR CONFIG_BOARD STREQUAL frdmmcxn236 OR CONFIG_BOARD STREQUAL frdmmcxn947 OR CONFIG_BOARD STREQUAL frdmmcxc444 OR CONFIG_BOARD STREQUAL frdmmcxc242)))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra/erpc_basic_codec.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra/erpc_message_buffer.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra/erpc_message_loggers.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra/erpc_crc16.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra/erpc_pre_post_action.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra/erpc_utils.cpp
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/port
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/transports
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c
)

if(CONFIG_USE_COMPONENT_CONFIGURATION)
  message("===>Import configuration from ${CMAKE_CURRENT_LIST_FILE}")

  if(CONFIG_TOOLCHAIN STREQUAL iar)
    target_compile_options(${MCUX_SDK_PROJECT_NAME} PUBLIC
      --enable_restrict
    )
  endif()

endif()

else()

message(SEND_ERROR "middleware_multicore_erpc_common dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_eRPC_arbitrator)
# Add set(CONFIG_USE_middleware_multicore_erpc_eRPC_arbitrator true) in config.cmake to use this component

message("middleware_multicore_erpc_eRPC_arbitrator component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra/erpc_arbitrated_client_manager.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra/erpc_client_manager.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup/erpc_arbitrated_client_setup.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra/erpc_simple_server.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra/erpc_server.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup/erpc_server_setup.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra/erpc_transport_arbitrator.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/port/erpc_threading_freertos.cpp
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/port
)

else()

message(SEND_ERROR "middleware_multicore_erpc_eRPC_arbitrator dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_eRPC_client)
# Add set(CONFIG_USE_middleware_multicore_erpc_eRPC_client true) in config.cmake to use this component

message("middleware_multicore_erpc_eRPC_client component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra/erpc_client_manager.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup/erpc_client_setup.cpp
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup
)

else()

message(SEND_ERROR "middleware_multicore_erpc_eRPC_client dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_eRPC_server)
# Add set(CONFIG_USE_middleware_multicore_erpc_eRPC_server true) in config.cmake to use this component

message("middleware_multicore_erpc_eRPC_server component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra/erpc_simple_server.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra/erpc_server.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup/erpc_server_setup.cpp
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup
)

else()

message(SEND_ERROR "middleware_multicore_erpc_eRPC_server dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_eRPC_rpmsg_tty_rtos_remote_c_wrapper)
# Add set(CONFIG_USE_middleware_multicore_erpc_eRPC_rpmsg_tty_rtos_remote_c_wrapper true) in config.cmake to use this component

message("middleware_multicore_erpc_eRPC_rpmsg_tty_rtos_remote_c_wrapper component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup/erpc_setup_rpmsg_tty_rtos_remote.cpp
)

else()

message(SEND_ERROR "middleware_multicore_erpc_eRPC_rpmsg_tty_rtos_remote_c_wrapper dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_eRPC_mu_c_wrapper)
# Add set(CONFIG_USE_middleware_multicore_erpc_eRPC_mu_c_wrapper true) in config.cmake to use this component

message("middleware_multicore_erpc_eRPC_mu_c_wrapper component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup/erpc_setup_mu.cpp
)

else()

message(SEND_ERROR "middleware_multicore_erpc_eRPC_mu_c_wrapper dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_eRPC_rpmsg_lite_master_c_wrapper)
# Add set(CONFIG_USE_middleware_multicore_erpc_eRPC_rpmsg_lite_master_c_wrapper true) in config.cmake to use this component

message("middleware_multicore_erpc_eRPC_rpmsg_lite_master_c_wrapper component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup/erpc_setup_rpmsg_lite_master.cpp
)

else()

message(SEND_ERROR "middleware_multicore_erpc_eRPC_rpmsg_lite_master_c_wrapper dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_eRPC_rpmsg_lite_remote_c_wrapper)
# Add set(CONFIG_USE_middleware_multicore_erpc_eRPC_rpmsg_lite_remote_c_wrapper true) in config.cmake to use this component

message("middleware_multicore_erpc_eRPC_rpmsg_lite_remote_c_wrapper component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup/erpc_setup_rpmsg_lite_remote.cpp
)

else()

message(SEND_ERROR "middleware_multicore_erpc_eRPC_rpmsg_lite_remote_c_wrapper dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_eRPC_rpmsg_lite_rtos_master_c_wrapper)
# Add set(CONFIG_USE_middleware_multicore_erpc_eRPC_rpmsg_lite_rtos_master_c_wrapper true) in config.cmake to use this component

message("middleware_multicore_erpc_eRPC_rpmsg_lite_rtos_master_c_wrapper component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup/erpc_setup_rpmsg_lite_rtos_master.cpp
)

else()

message(SEND_ERROR "middleware_multicore_erpc_eRPC_rpmsg_lite_rtos_master_c_wrapper dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_eRPC_rpmsg_lite_rtos_remote_c_wrapper)
# Add set(CONFIG_USE_middleware_multicore_erpc_eRPC_rpmsg_lite_rtos_remote_c_wrapper true) in config.cmake to use this component

message("middleware_multicore_erpc_eRPC_rpmsg_lite_rtos_remote_c_wrapper component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup/erpc_setup_rpmsg_lite_rtos_remote.cpp
)

else()

message(SEND_ERROR "middleware_multicore_erpc_eRPC_rpmsg_lite_rtos_remote_c_wrapper dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_eRPC_dspi_master_c_wrapper)
# Add set(CONFIG_USE_middleware_multicore_erpc_eRPC_dspi_master_c_wrapper true) in config.cmake to use this component

message("middleware_multicore_erpc_eRPC_dspi_master_c_wrapper component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup/erpc_setup_dspi_master.cpp
)

else()

message(SEND_ERROR "middleware_multicore_erpc_eRPC_dspi_master_c_wrapper dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_eRPC_dspi_slave_c_wrapper)
# Add set(CONFIG_USE_middleware_multicore_erpc_eRPC_dspi_slave_c_wrapper true) in config.cmake to use this component

message("middleware_multicore_erpc_eRPC_dspi_slave_c_wrapper component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup/erpc_setup_dspi_slave.cpp
)

else()

message(SEND_ERROR "middleware_multicore_erpc_eRPC_dspi_slave_c_wrapper dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_eRPC_spi_master_c_wrapper)
# Add set(CONFIG_USE_middleware_multicore_erpc_eRPC_spi_master_c_wrapper true) in config.cmake to use this component

message("middleware_multicore_erpc_eRPC_spi_master_c_wrapper component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup/erpc_setup_spi_master.cpp
)

else()

message(SEND_ERROR "middleware_multicore_erpc_eRPC_spi_master_c_wrapper dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_eRPC_spi_slave_c_wrapper)
# Add set(CONFIG_USE_middleware_multicore_erpc_eRPC_spi_slave_c_wrapper true) in config.cmake to use this component

message("middleware_multicore_erpc_eRPC_spi_slave_c_wrapper component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup/erpc_setup_spi_slave.cpp
)

else()

message(SEND_ERROR "middleware_multicore_erpc_eRPC_spi_slave_c_wrapper dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_eRPC_lpspi_slave_c_wrapper)
# Add set(CONFIG_USE_middleware_multicore_erpc_eRPC_lpspi_slave_c_wrapper true) in config.cmake to use this component

message("middleware_multicore_erpc_eRPC_lpspi_slave_c_wrapper component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup/erpc_setup_lpspi_slave.cpp
)

else()

message(SEND_ERROR "middleware_multicore_erpc_eRPC_lpspi_slave_c_wrapper dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_eRPC_i2c_slave_c_wrapper)
# Add set(CONFIG_USE_middleware_multicore_erpc_eRPC_i2c_slave_c_wrapper true) in config.cmake to use this component

message("middleware_multicore_erpc_eRPC_i2c_slave_c_wrapper component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup/erpc_setup_i2c_slave.cpp
)

else()

message(SEND_ERROR "middleware_multicore_erpc_eRPC_i2c_slave_c_wrapper dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_eRPC_lpi2c_slave_c_wrapper)
# Add set(CONFIG_USE_middleware_multicore_erpc_eRPC_lpi2c_slave_c_wrapper true) in config.cmake to use this component

message("middleware_multicore_erpc_eRPC_lpi2c_slave_c_wrapper component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup/erpc_setup_lpi2c_slave.cpp
)

else()

message(SEND_ERROR "middleware_multicore_erpc_eRPC_lpi2c_slave_c_wrapper dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_eRPC_mu_transport)
# Add set(CONFIG_USE_middleware_multicore_erpc_eRPC_mu_transport true) in config.cmake to use this component

message("middleware_multicore_erpc_eRPC_mu_transport component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/transports/erpc_mu_transport.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup/erpc_setup_mbf_dynamic.cpp
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/transports
)

else()

message(SEND_ERROR "middleware_multicore_erpc_eRPC_mu_transport dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_eRPC_mu_rtos_transport)
# Add set(CONFIG_USE_middleware_multicore_erpc_eRPC_mu_rtos_transport true) in config.cmake to use this component

message("middleware_multicore_erpc_eRPC_mu_rtos_transport component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/transports/erpc_mu_transport.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/port/erpc_threading_freertos.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup/erpc_setup_mbf_dynamic.cpp
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/transports
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/port
)

else()

message(SEND_ERROR "middleware_multicore_erpc_eRPC_mu_rtos_transport dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_eRPC_rpmsg_lite_transport)
# Add set(CONFIG_USE_middleware_multicore_erpc_eRPC_rpmsg_lite_transport true) in config.cmake to use this component

message("middleware_multicore_erpc_eRPC_rpmsg_lite_transport component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/transports/erpc_rpmsg_lite_transport.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup/erpc_setup_mbf_rpmsg.cpp
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/transports
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra
)

else()

message(SEND_ERROR "middleware_multicore_erpc_eRPC_rpmsg_lite_transport dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_eRPC_rpmsg_lite_rtos_transport)
# Add set(CONFIG_USE_middleware_multicore_erpc_eRPC_rpmsg_lite_rtos_transport true) in config.cmake to use this component

message("middleware_multicore_erpc_eRPC_rpmsg_lite_rtos_transport component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/transports/erpc_rpmsg_lite_rtos_transport.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup/erpc_setup_mbf_rpmsg.cpp
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/transports
)

else()

message(SEND_ERROR "middleware_multicore_erpc_eRPC_rpmsg_lite_rtos_transport dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_eRPC_rpmsg_tty_rtos_transport)
# Add set(CONFIG_USE_middleware_multicore_erpc_eRPC_rpmsg_tty_rtos_transport true) in config.cmake to use this component

message("middleware_multicore_erpc_eRPC_rpmsg_tty_rtos_transport component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/transports/erpc_rpmsg_tty_rtos_transport.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup/erpc_setup_mbf_rpmsg.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/port/erpc_threading_freertos.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra/erpc_framed_transport.cpp
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/transports
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/port
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra
)

else()

message(SEND_ERROR "middleware_multicore_erpc_eRPC_rpmsg_tty_rtos_transport dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_eRPC_uart_cmsis_transport)
# Add set(CONFIG_USE_middleware_multicore_erpc_eRPC_uart_cmsis_transport true) in config.cmake to use this component

message("middleware_multicore_erpc_eRPC_uart_cmsis_transport component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/transports/erpc_uart_cmsis_transport.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra/erpc_framed_transport.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup/erpc_setup_uart_cmsis.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup/erpc_setup_mbf_dynamic.cpp
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/transports
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra
)

else()

message(SEND_ERROR "middleware_multicore_erpc_eRPC_uart_cmsis_transport dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_eRPC_dspi_master_transport)
# Add set(CONFIG_USE_middleware_multicore_erpc_eRPC_dspi_master_transport true) in config.cmake to use this component

message("middleware_multicore_erpc_eRPC_dspi_master_transport component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/transports/erpc_dspi_master_transport.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra/erpc_framed_transport.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup/erpc_setup_mbf_dynamic.cpp
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/transports
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra
)

else()

message(SEND_ERROR "middleware_multicore_erpc_eRPC_dspi_master_transport dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_eRPC_dspi_slave_transport)
# Add set(CONFIG_USE_middleware_multicore_erpc_eRPC_dspi_slave_transport true) in config.cmake to use this component

message("middleware_multicore_erpc_eRPC_dspi_slave_transport component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/transports/erpc_dspi_slave_transport.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra/erpc_framed_transport.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup/erpc_setup_mbf_dynamic.cpp
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/transports
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra
)

else()

message(SEND_ERROR "middleware_multicore_erpc_eRPC_dspi_slave_transport dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_eRPC_spi_master_transport)
# Add set(CONFIG_USE_middleware_multicore_erpc_eRPC_spi_master_transport true) in config.cmake to use this component

message("middleware_multicore_erpc_eRPC_spi_master_transport component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/transports/erpc_spi_master_transport.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra/erpc_framed_transport.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup/erpc_setup_mbf_dynamic.cpp
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/transports
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra
)

else()

message(SEND_ERROR "middleware_multicore_erpc_eRPC_spi_master_transport dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_eRPC_spi_slave_transport)
# Add set(CONFIG_USE_middleware_multicore_erpc_eRPC_spi_slave_transport true) in config.cmake to use this component

message("middleware_multicore_erpc_eRPC_spi_slave_transport component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/transports/erpc_spi_slave_transport.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra/erpc_framed_transport.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup/erpc_setup_mbf_dynamic.cpp
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/transports
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra
)

else()

message(SEND_ERROR "middleware_multicore_erpc_eRPC_spi_slave_transport dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_eRPC_lpspi_slave_transport)
# Add set(CONFIG_USE_middleware_multicore_erpc_eRPC_lpspi_slave_transport true) in config.cmake to use this component

message("middleware_multicore_erpc_eRPC_lpspi_slave_transport component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/transports/erpc_lpspi_slave_transport.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra/erpc_framed_transport.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup/erpc_setup_mbf_dynamic.cpp
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/transports
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra
)

else()

message(SEND_ERROR "middleware_multicore_erpc_eRPC_lpspi_slave_transport dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_eRPC_i2c_slave_transport)
# Add set(CONFIG_USE_middleware_multicore_erpc_eRPC_i2c_slave_transport true) in config.cmake to use this component

message("middleware_multicore_erpc_eRPC_i2c_slave_transport component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/transports/erpc_i2c_slave_transport.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra/erpc_framed_transport.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup/erpc_setup_mbf_dynamic.cpp
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/transports
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra
)

else()

message(SEND_ERROR "middleware_multicore_erpc_eRPC_i2c_slave_transport dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_eRPC_lpi2c_slave_transport)
# Add set(CONFIG_USE_middleware_multicore_erpc_eRPC_lpi2c_slave_transport true) in config.cmake to use this component

message("middleware_multicore_erpc_eRPC_lpi2c_slave_transport component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/transports/erpc_lpi2c_slave_transport.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra/erpc_framed_transport.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/setup/erpc_setup_mbf_dynamic.cpp
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/transports
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/infra
)

else()

message(SEND_ERROR "middleware_multicore_erpc_eRPC_lpi2c_slave_transport dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_eRPC_port_freertos)
# Add set(CONFIG_USE_middleware_multicore_erpc_eRPC_port_freertos true) in config.cmake to use this component

message("middleware_multicore_erpc_eRPC_port_freertos component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/port/erpc_port_freertos.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/port/erpc_threading_freertos.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/port/erpc_setup_extensions_freertos.cpp
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/port
)

else()

message(SEND_ERROR "middleware_multicore_erpc_eRPC_port_freertos dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_eRPC_port_stdlib)
# Add set(CONFIG_USE_middleware_multicore_erpc_eRPC_port_stdlib true) in config.cmake to use this component

message("middleware_multicore_erpc_eRPC_port_stdlib component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/port/erpc_port_stdlib.cpp
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./erpc/erpc_c/port
)

else()

message(SEND_ERROR "middleware_multicore_erpc_eRPC_port_stdlib dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_doc)
# Add set(CONFIG_USE_middleware_multicore_erpc_doc true) in config.cmake to use this component

message("middleware_multicore_erpc_doc component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

else()

message(SEND_ERROR "middleware_multicore_erpc_doc dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_zephyr)
# Add set(CONFIG_USE_middleware_multicore_erpc_zephyr true) in config.cmake to use this component

message("middleware_multicore_erpc_zephyr component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

else()

message(SEND_ERROR "middleware_multicore_erpc_zephyr dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_java)
# Add set(CONFIG_USE_middleware_multicore_erpc_java true) in config.cmake to use this component

message("middleware_multicore_erpc_java component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

else()

message(SEND_ERROR "middleware_multicore_erpc_java dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_examples)
# Add set(CONFIG_USE_middleware_multicore_erpc_examples true) in config.cmake to use this component

message("middleware_multicore_erpc_examples component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_erpc_common)

else()

message(SEND_ERROR "middleware_multicore_erpc_examples dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc)
# Add set(CONFIG_USE_middleware_multicore_erpc true) in config.cmake to use this component

message("middleware_multicore_erpc component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(((CONFIG_DEVICE_ID STREQUAL K32L2B11xxxxA OR CONFIG_DEVICE_ID STREQUAL K32L2B21xxxxA OR CONFIG_DEVICE_ID STREQUAL K32L2B31xxxxA OR CONFIG_DEVICE_ID STREQUAL K32L3A60xxx OR CONFIG_DEVICE_ID STREQUAL LPC5534 OR CONFIG_DEVICE_ID STREQUAL LPC5536 OR CONFIG_DEVICE_ID STREQUAL LPC55S36 OR CONFIG_DEVICE_ID STREQUAL LPC55S69 OR CONFIG_DEVICE_ID STREQUAL LPC55S66 OR CONFIG_DEVICE_ID STREQUAL MIMXRT1165xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1166xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1173xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1175xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1176xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx OR CONFIG_DEVICE_ID STREQUAL KW45B41Z52xxxA OR CONFIG_DEVICE_ID STREQUAL KW45B41Z53xxxA OR CONFIG_DEVICE_ID STREQUAL KW45B41Z82xxxA OR CONFIG_DEVICE_ID STREQUAL KW45B41Z83xxxA OR CONFIG_DEVICE_ID STREQUAL MCXN236 OR CONFIG_DEVICE_ID STREQUAL MCXN946 OR CONFIG_DEVICE_ID STREQUAL MCXN947 OR CONFIG_DEVICE_ID STREQUAL MCXN546 OR CONFIG_DEVICE_ID STREQUAL MCXN547 OR CONFIG_DEVICE_ID STREQUAL MIMXRT595S OR CONFIG_DEVICE_ID STREQUAL MIMXRT633S OR CONFIG_DEVICE_ID STREQUAL MIMXRT685S OR CONFIG_DEVICE_ID STREQUAL MCIMX7U3xxxxx OR CONFIG_DEVICE_ID STREQUAL MCIMX7U5xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMX8UD3xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX8UD5xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX8UD7xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX8US3xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX8US5xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX9301xxxxD OR CONFIG_DEVICE_ID STREQUAL MIMX9302xxxxD OR CONFIG_DEVICE_ID STREQUAL MIMX9311xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9312xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9321xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9322xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9331xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9332xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9351xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9352xxxxM OR CONFIG_DEVICE_ID STREQUAL MCXC444 OR CONFIG_DEVICE_ID STREQUAL MCXC242) OR (CONFIG_BOARD STREQUAL frdmk22f OR CONFIG_BOARD STREQUAL frdmk32l2b OR CONFIG_BOARD STREQUAL evkmcimx7ulp OR CONFIG_BOARD STREQUAL frdmk32l3a6 OR CONFIG_BOARD STREQUAL lpcxpresso55s69 OR CONFIG_BOARD STREQUAL lpcxpresso55s36 OR CONFIG_BOARD STREQUAL evkmimxrt1160 OR CONFIG_BOARD STREQUAL evkmimxrt1170 OR CONFIG_BOARD STREQUAL evkbmimxrt1170 OR CONFIG_BOARD STREQUAL evkmimxrt685 OR CONFIG_BOARD STREQUAL evkmimxrt1060 OR CONFIG_BOARD STREQUAL evkmimxrt1180 OR CONFIG_BOARD STREQUAL mcxn9xxevk OR CONFIG_BOARD STREQUAL mcxn5xxevk OR CONFIG_BOARD STREQUAL frdmmcxn236 OR CONFIG_BOARD STREQUAL frdmmcxn947 OR CONFIG_BOARD STREQUAL frdmmcxc444 OR CONFIG_BOARD STREQUAL frdmmcxc242)))

else()

message(SEND_ERROR "middleware_multicore_erpc dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_common_multiprocessor)
# Add set(CONFIG_USE_middleware_multicore_erpc_common_multiprocessor true) in config.cmake to use this component

message("middleware_multicore_erpc_common_multiprocessor component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(((CONFIG_DEVICE_ID STREQUAL MIMXRT1165xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1173xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1175xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx OR CONFIG_DEVICE_ID STREQUAL MCXN236 OR CONFIG_DEVICE_ID STREQUAL MCXN947 OR CONFIG_DEVICE_ID STREQUAL MCXN547 OR CONFIG_DEVICE_ID STREQUAL MCXC444 OR CONFIG_DEVICE_ID STREQUAL MCXC242) OR (CONFIG_BOARD STREQUAL frdmk22f OR CONFIG_BOARD STREQUAL frdmk32l2b OR CONFIG_BOARD STREQUAL evkmcimx7ulp OR CONFIG_BOARD STREQUAL frdmk32l3a6 OR CONFIG_BOARD STREQUAL lpcxpresso55s69 OR CONFIG_BOARD STREQUAL lpcxpresso55s36 OR CONFIG_BOARD STREQUAL evkmimxrt1160 OR CONFIG_BOARD STREQUAL evkmimxrt1170 OR CONFIG_BOARD STREQUAL evkbmimxrt1170 OR CONFIG_BOARD STREQUAL evkmimxrt685 OR CONFIG_BOARD STREQUAL evkmimxrt1060 OR CONFIG_BOARD STREQUAL evkmimxrt1180 OR CONFIG_BOARD STREQUAL mcxn9xxevk OR CONFIG_BOARD STREQUAL mcxn5xxevk OR CONFIG_BOARD STREQUAL frdmmcxn236 OR CONFIG_BOARD STREQUAL frdmmcxn947 OR CONFIG_BOARD STREQUAL frdmmcxc444 OR CONFIG_BOARD STREQUAL frdmmcxc242)))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./example/multiprocessor_examples/erpc_common/erpc_error_handler.cpp
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./example/multiprocessor_examples/erpc_common
)

else()

message(SEND_ERROR "middleware_multicore_erpc_common_multiprocessor dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_common_multiprocessor_matrix_multiply_client)
# Add set(CONFIG_USE_middleware_multicore_erpc_common_multiprocessor_matrix_multiply_client true) in config.cmake to use this component

message("middleware_multicore_erpc_common_multiprocessor_matrix_multiply_client component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(((CONFIG_DEVICE_ID STREQUAL MIMXRT1165xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1173xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1175xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx OR CONFIG_DEVICE_ID STREQUAL MCXN236 OR CONFIG_DEVICE_ID STREQUAL MCXN947 OR CONFIG_DEVICE_ID STREQUAL MCXN547 OR CONFIG_DEVICE_ID STREQUAL MCXC444 OR CONFIG_DEVICE_ID STREQUAL MCXC242) OR (CONFIG_BOARD STREQUAL frdmk22f OR CONFIG_BOARD STREQUAL frdmk32l2b OR CONFIG_BOARD STREQUAL evkmcimx7ulp OR CONFIG_BOARD STREQUAL frdmk32l3a6 OR CONFIG_BOARD STREQUAL lpcxpresso55s69 OR CONFIG_BOARD STREQUAL lpcxpresso55s36 OR CONFIG_BOARD STREQUAL evkmimxrt1160 OR CONFIG_BOARD STREQUAL evkmimxrt1170 OR CONFIG_BOARD STREQUAL evkbmimxrt1170 OR CONFIG_BOARD STREQUAL evkmimxrt685 OR CONFIG_BOARD STREQUAL evkmimxrt1060 OR CONFIG_BOARD STREQUAL evkmimxrt1180 OR CONFIG_BOARD STREQUAL mcxn9xxevk OR CONFIG_BOARD STREQUAL mcxn5xxevk OR CONFIG_BOARD STREQUAL frdmmcxn236 OR CONFIG_BOARD STREQUAL frdmmcxn947 OR CONFIG_BOARD STREQUAL frdmmcxc444 OR CONFIG_BOARD STREQUAL frdmmcxc242)))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./example/multiprocessor_examples/erpc_common/erpc_matrix_multiply/service/erpc_matrix_multiply_client.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./example/multiprocessor_examples/erpc_common/erpc_matrix_multiply/service/erpc_matrix_multiply_interface.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./example/multiprocessor_examples/erpc_common/erpc_matrix_multiply/service/c_erpc_matrix_multiply_client.cpp
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./example/multiprocessor_examples/erpc_common/erpc_matrix_multiply/service
)

else()

message(SEND_ERROR "middleware_multicore_erpc_common_multiprocessor_matrix_multiply_client dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_common_multiprocessor_matrix_multiply_server)
# Add set(CONFIG_USE_middleware_multicore_erpc_common_multiprocessor_matrix_multiply_server true) in config.cmake to use this component

message("middleware_multicore_erpc_common_multiprocessor_matrix_multiply_server component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(((CONFIG_DEVICE_ID STREQUAL MIMXRT1165xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1173xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1175xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx OR CONFIG_DEVICE_ID STREQUAL MCXN236 OR CONFIG_DEVICE_ID STREQUAL MCXN947 OR CONFIG_DEVICE_ID STREQUAL MCXN547 OR CONFIG_DEVICE_ID STREQUAL MCXC444 OR CONFIG_DEVICE_ID STREQUAL MCXC242) OR (CONFIG_BOARD STREQUAL frdmk22f OR CONFIG_BOARD STREQUAL frdmk32l2b OR CONFIG_BOARD STREQUAL evkmcimx7ulp OR CONFIG_BOARD STREQUAL frdmk32l3a6 OR CONFIG_BOARD STREQUAL lpcxpresso55s69 OR CONFIG_BOARD STREQUAL lpcxpresso55s36 OR CONFIG_BOARD STREQUAL evkmimxrt1160 OR CONFIG_BOARD STREQUAL evkmimxrt1170 OR CONFIG_BOARD STREQUAL evkbmimxrt1170 OR CONFIG_BOARD STREQUAL evkmimxrt685 OR CONFIG_BOARD STREQUAL evkmimxrt1060 OR CONFIG_BOARD STREQUAL evkmimxrt1180 OR CONFIG_BOARD STREQUAL mcxn9xxevk OR CONFIG_BOARD STREQUAL mcxn5xxevk OR CONFIG_BOARD STREQUAL frdmmcxn236 OR CONFIG_BOARD STREQUAL frdmmcxn947 OR CONFIG_BOARD STREQUAL frdmmcxc444 OR CONFIG_BOARD STREQUAL frdmmcxc242)))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./example/multiprocessor_examples/erpc_common/erpc_matrix_multiply/service/erpc_matrix_multiply_server.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./example/multiprocessor_examples/erpc_common/erpc_matrix_multiply/service/erpc_matrix_multiply_interface.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./example/multiprocessor_examples/erpc_common/erpc_matrix_multiply/service/c_erpc_matrix_multiply_server.cpp
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./example/multiprocessor_examples/erpc_common/erpc_matrix_multiply/service
)

else()

message(SEND_ERROR "middleware_multicore_erpc_common_multiprocessor_matrix_multiply_server dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_imx8ulp_m33_bm)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_imx8ulp_m33_bm true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_imx8ulp_m33_bm component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmimx8ulp OR CONFIG_BOARD STREQUAL evk9mimx8ulp))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/imx8ulp_m33/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/imx8ulp_m33
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_imx8ulp_m33_bm dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_imx8ulp_m33_freertos)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_imx8ulp_m33_freertos true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_imx8ulp_m33_freertos component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmimx8ulp OR CONFIG_BOARD STREQUAL evk9mimx8ulp) AND CONFIG_USE_middleware_freertos-kernel AND CONFIG_USE_middleware_freertos-kernel_heap_4)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/imx8ulp_m33/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/imx8ulp_m33
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_imx8ulp_m33_freertos dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_imx8ulp_fusionf1_bm)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_imx8ulp_fusionf1_bm true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_imx8ulp_fusionf1_bm component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmimx8ulp OR CONFIG_BOARD STREQUAL evk9mimx8ulp))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/imx8ulp_fusionf1/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/imx8ulp_fusionf1
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_imx8ulp_fusionf1_bm dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_zephyr)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_zephyr true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_zephyr component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_rpmsg_lite)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_zephyr.c
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/rpmsg_queue.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/environment/zephyr
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_zephyr dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(((CONFIG_DEVICE_ID STREQUAL K32L3A60xxx OR CONFIG_DEVICE_ID STREQUAL LPC55S69 OR CONFIG_DEVICE_ID STREQUAL LPC55S66 OR CONFIG_DEVICE_ID STREQUAL MIMXRT1165xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1166xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1173xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1175xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1176xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx OR CONFIG_DEVICE_ID STREQUAL KW45B41Z52xxxA OR CONFIG_DEVICE_ID STREQUAL KW45B41Z53xxxA OR CONFIG_DEVICE_ID STREQUAL KW45B41Z82xxxA OR CONFIG_DEVICE_ID STREQUAL KW45B41Z83xxxA OR CONFIG_DEVICE_ID STREQUAL MCXN946 OR CONFIG_DEVICE_ID STREQUAL MCXN947 OR CONFIG_DEVICE_ID STREQUAL MCXN546 OR CONFIG_DEVICE_ID STREQUAL MCXN547 OR CONFIG_DEVICE_ID STREQUAL MCIMX7U3xxxxx OR CONFIG_DEVICE_ID STREQUAL MCIMX7U5xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT595S OR CONFIG_DEVICE_ID STREQUAL MIMXRT633S OR CONFIG_DEVICE_ID STREQUAL MIMXRT685S OR CONFIG_DEVICE_ID STREQUAL MIMX8MD6xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MD6xxxHZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MD7xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MD7xxxHZ OR CONFIG_DEVICE_ID STREQUAL MIMX8ML3xxxLZ OR CONFIG_DEVICE_ID STREQUAL MIMX8ML3xxxKZ OR CONFIG_DEVICE_ID STREQUAL MIMX8ML4xxxLZ OR CONFIG_DEVICE_ID STREQUAL MIMX8ML4xxxKZ OR CONFIG_DEVICE_ID STREQUAL MIMX8ML6xxxLZ OR CONFIG_DEVICE_ID STREQUAL MIMX8ML6xxxKZ OR CONFIG_DEVICE_ID STREQUAL MIMX8ML8xxxLZ OR CONFIG_DEVICE_ID STREQUAL MIMX8ML8xxxKZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM1xxxLZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM1xxxKZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM2xxxLZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM2xxxKZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM3xxxLZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM3xxxKZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM4xxxLZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM4xxxKZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM5xxxLZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM5xxxKZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM6xxxLZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM6xxxKZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN1xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN1xxxIZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN2xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN2xxxIZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN3xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN3xxxIZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN4xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN4xxxIZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN5xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN5xxxIZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN6xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN6xxxIZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ5xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ5xxxHZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ6xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ6xxxHZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ7xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ7xxxHZ OR CONFIG_DEVICE_ID STREQUAL MIMX8UD3xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX8UD5xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX8UD7xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX8US3xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX8US5xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX9301xxxxD OR CONFIG_DEVICE_ID STREQUAL MIMX9302xxxxD OR CONFIG_DEVICE_ID STREQUAL MIMX9311xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9312xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9321xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9322xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9331xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9332xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9351xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9352xxxxM OR CONFIG_DEVICE_ID STREQUAL MCXW716CxxxA OR CONFIG_DEVICE_ID STREQUAL MCXW716AxxxA) OR (CONFIG_BOARD STREQUAL kw45b41zevk OR CONFIG_BOARD STREQUAL k32w148evk OR CONFIG_BOARD STREQUAL kw45b41zloc OR CONFIG_BOARD STREQUAL frdmk32l3a6 OR CONFIG_BOARD STREQUAL evkmcimx7ulp OR CONFIG_BOARD STREQUAL evkmimx8mq OR CONFIG_BOARD STREQUAL evkmimxrt685 OR CONFIG_BOARD STREQUAL mimxrt685audevk OR CONFIG_BOARD STREQUAL evkmimxrt595 OR CONFIG_BOARD STREQUAL lpcxpresso55s69 OR CONFIG_BOARD STREQUAL evkmimx8mm OR CONFIG_BOARD STREQUAL evkmimx8mn OR CONFIG_BOARD STREQUAL evkmimx8mnddr3l OR CONFIG_BOARD STREQUAL evkmimx8mp OR CONFIG_BOARD STREQUAL evkmimx8ulp OR CONFIG_BOARD STREQUAL evk9mimx8ulp OR CONFIG_BOARD STREQUAL evkmimxrt1160 OR CONFIG_BOARD STREQUAL evkmimxrt1170 OR CONFIG_BOARD STREQUAL evkmimxrt1180 OR CONFIG_BOARD STREQUAL mcimx93evk OR CONFIG_BOARD STREQUAL mcimx93qsb OR CONFIG_BOARD STREQUAL mcimx93autoevk OR CONFIG_BOARD STREQUAL evkbmimxrt1170 OR CONFIG_BOARD STREQUAL mcxn9xxevk OR CONFIG_BOARD STREQUAL mcxn5xxevk OR CONFIG_BOARD STREQUAL frdmmcxn947 OR CONFIG_BOARD STREQUAL frdmmcxw71)) AND (CONFIG_USE_middleware_multicore_rpmsg_lite_bm OR CONFIG_USE_middleware_multicore_rpmsg_lite_freertos OR CONFIG_USE_middleware_multicore_rpmsg_lite_xos OR CONFIG_USE_middleware_multicore_rpmsg_lite_azurertos))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/common/llist.c
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/rpmsg_lite.c
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/rpmsg_ns.c
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/virtio/virtqueue.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_common_multicore)
# Add set(CONFIG_USE_middleware_multicore_erpc_common_multicore true) in config.cmake to use this component

message("middleware_multicore_erpc_common_multicore component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(((CONFIG_DEVICE_ID STREQUAL MIMXRT1165xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1173xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1175xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx OR CONFIG_DEVICE_ID STREQUAL MCXN947 OR CONFIG_DEVICE_ID STREQUAL MCXN547) OR (CONFIG_BOARD STREQUAL frdmk22f OR CONFIG_BOARD STREQUAL frdmk32l2b OR CONFIG_BOARD STREQUAL evkmcimx7ulp OR CONFIG_BOARD STREQUAL frdmk32l3a6 OR CONFIG_BOARD STREQUAL lpcxpresso55s69 OR CONFIG_BOARD STREQUAL lpcxpresso55s36 OR CONFIG_BOARD STREQUAL evkmimxrt1160 OR CONFIG_BOARD STREQUAL evkmimxrt1170 OR CONFIG_BOARD STREQUAL evkbmimxrt1170 OR CONFIG_BOARD STREQUAL evkmimxrt685 OR CONFIG_BOARD STREQUAL evkmimxrt1060 OR CONFIG_BOARD STREQUAL evkmimxrt1180 OR CONFIG_BOARD STREQUAL mcxn9xxevk OR CONFIG_BOARD STREQUAL mcxn5xxevk OR CONFIG_BOARD STREQUAL frdmmcxn947)))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./example/multicore_examples/erpc_common/erpc_error_handler.cpp
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./example/multicore_examples/erpc_common
)

else()

message(SEND_ERROR "middleware_multicore_erpc_common_multicore dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_common_multicore_matrix_multiply_client)
# Add set(CONFIG_USE_middleware_multicore_erpc_common_multicore_matrix_multiply_client true) in config.cmake to use this component

message("middleware_multicore_erpc_common_multicore_matrix_multiply_client component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(((CONFIG_DEVICE_ID STREQUAL MIMXRT1165xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1173xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1175xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx OR CONFIG_DEVICE_ID STREQUAL MCXN947 OR CONFIG_DEVICE_ID STREQUAL MCXN547) OR (CONFIG_BOARD STREQUAL frdmk22f OR CONFIG_BOARD STREQUAL frdmk32l2b OR CONFIG_BOARD STREQUAL evkmcimx7ulp OR CONFIG_BOARD STREQUAL frdmk32l3a6 OR CONFIG_BOARD STREQUAL lpcxpresso55s69 OR CONFIG_BOARD STREQUAL lpcxpresso55s36 OR CONFIG_BOARD STREQUAL evkmimxrt1160 OR CONFIG_BOARD STREQUAL evkmimxrt1170 OR CONFIG_BOARD STREQUAL evkbmimxrt1170 OR CONFIG_BOARD STREQUAL evkmimxrt685 OR CONFIG_BOARD STREQUAL evkmimxrt1060 OR CONFIG_BOARD STREQUAL evkmimxrt1180 OR CONFIG_BOARD STREQUAL mcxn9xxevk OR CONFIG_BOARD STREQUAL mcxn5xxevk OR CONFIG_BOARD STREQUAL frdmmcxn947)))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./example/multicore_examples/erpc_common/erpc_matrix_multiply/service/erpc_matrix_multiply_client.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./example/multicore_examples/erpc_common/erpc_matrix_multiply/service/erpc_matrix_multiply_interface.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./example/multicore_examples/erpc_common/erpc_matrix_multiply/service/c_erpc_matrix_multiply_client.cpp
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./example/multicore_examples/erpc_common/erpc_matrix_multiply/service
)

else()

message(SEND_ERROR "middleware_multicore_erpc_common_multicore_matrix_multiply_client dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_common_multicore_matrix_multiply_server)
# Add set(CONFIG_USE_middleware_multicore_erpc_common_multicore_matrix_multiply_server true) in config.cmake to use this component

message("middleware_multicore_erpc_common_multicore_matrix_multiply_server component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(((CONFIG_DEVICE_ID STREQUAL MIMXRT1165xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1173xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1175xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx OR CONFIG_DEVICE_ID STREQUAL MCXN947 OR CONFIG_DEVICE_ID STREQUAL MCXN547) OR (CONFIG_BOARD STREQUAL frdmk22f OR CONFIG_BOARD STREQUAL frdmk32l2b OR CONFIG_BOARD STREQUAL evkmcimx7ulp OR CONFIG_BOARD STREQUAL frdmk32l3a6 OR CONFIG_BOARD STREQUAL lpcxpresso55s69 OR CONFIG_BOARD STREQUAL lpcxpresso55s36 OR CONFIG_BOARD STREQUAL evkmimxrt1160 OR CONFIG_BOARD STREQUAL evkmimxrt1170 OR CONFIG_BOARD STREQUAL evkbmimxrt1170 OR CONFIG_BOARD STREQUAL evkmimxrt685 OR CONFIG_BOARD STREQUAL evkmimxrt1060 OR CONFIG_BOARD STREQUAL evkmimxrt1180 OR CONFIG_BOARD STREQUAL mcxn9xxevk OR CONFIG_BOARD STREQUAL mcxn5xxevk OR CONFIG_BOARD STREQUAL frdmmcxn947)))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./example/multicore_examples/erpc_common/erpc_matrix_multiply/service/erpc_matrix_multiply_server.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./example/multicore_examples/erpc_common/erpc_matrix_multiply/service/erpc_matrix_multiply_interface.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./example/multicore_examples/erpc_common/erpc_matrix_multiply/service/c_erpc_matrix_multiply_server.cpp
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./example/multicore_examples/erpc_common/erpc_matrix_multiply/service
)

else()

message(SEND_ERROR "middleware_multicore_erpc_common_multicore_matrix_multiply_server dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_common_two_way_rpc_core0)
# Add set(CONFIG_USE_middleware_multicore_erpc_common_two_way_rpc_core0 true) in config.cmake to use this component

message("middleware_multicore_erpc_common_two_way_rpc_core0 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(((CONFIG_DEVICE_ID STREQUAL MIMXRT1165xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1173xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1175xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx OR CONFIG_DEVICE_ID STREQUAL MCXN947 OR CONFIG_DEVICE_ID STREQUAL MCXN547) OR (CONFIG_BOARD STREQUAL frdmk22f OR CONFIG_BOARD STREQUAL frdmk32l2b OR CONFIG_BOARD STREQUAL evkmcimx7ulp OR CONFIG_BOARD STREQUAL frdmk32l3a6 OR CONFIG_BOARD STREQUAL lpcxpresso55s69 OR CONFIG_BOARD STREQUAL lpcxpresso55s36 OR CONFIG_BOARD STREQUAL evkmimxrt1160 OR CONFIG_BOARD STREQUAL evkmimxrt1170 OR CONFIG_BOARD STREQUAL evkbmimxrt1170 OR CONFIG_BOARD STREQUAL evkmimxrt685 OR CONFIG_BOARD STREQUAL evkmimxrt1060 OR CONFIG_BOARD STREQUAL evkmimxrt1180 OR CONFIG_BOARD STREQUAL mcxn9xxevk OR CONFIG_BOARD STREQUAL mcxn5xxevk OR CONFIG_BOARD STREQUAL frdmmcxn947)))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./example/multicore_examples/erpc_common/erpc_two_way_rpc/service/erpc_two_way_rpc_Core0Interface_client.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./example/multicore_examples/erpc_common/erpc_two_way_rpc/service/c_erpc_two_way_rpc_Core0Interface_client.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./example/multicore_examples/erpc_common/erpc_two_way_rpc/service/erpc_two_way_rpc_Core0Interface_interface.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./example/multicore_examples/erpc_common/erpc_two_way_rpc/service/erpc_two_way_rpc_Core1Interface_server.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./example/multicore_examples/erpc_common/erpc_two_way_rpc/service/c_erpc_two_way_rpc_Core1Interface_server.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./example/multicore_examples/erpc_common/erpc_two_way_rpc/service/erpc_two_way_rpc_Core1Interface_interface.cpp
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./example/multicore_examples/erpc_common/erpc_two_way_rpc/service
)

else()

message(SEND_ERROR "middleware_multicore_erpc_common_two_way_rpc_core0 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_common_two_way_rpc_core1)
# Add set(CONFIG_USE_middleware_multicore_erpc_common_two_way_rpc_core1 true) in config.cmake to use this component

message("middleware_multicore_erpc_common_two_way_rpc_core1 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(((CONFIG_DEVICE_ID STREQUAL MIMXRT1165xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1173xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1175xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx OR CONFIG_DEVICE_ID STREQUAL MCXN947 OR CONFIG_DEVICE_ID STREQUAL MCXN547) OR (CONFIG_BOARD STREQUAL frdmk22f OR CONFIG_BOARD STREQUAL frdmk32l2b OR CONFIG_BOARD STREQUAL evkmcimx7ulp OR CONFIG_BOARD STREQUAL frdmk32l3a6 OR CONFIG_BOARD STREQUAL lpcxpresso55s69 OR CONFIG_BOARD STREQUAL lpcxpresso55s36 OR CONFIG_BOARD STREQUAL evkmimxrt1160 OR CONFIG_BOARD STREQUAL evkmimxrt1170 OR CONFIG_BOARD STREQUAL evkbmimxrt1170 OR CONFIG_BOARD STREQUAL evkmimxrt685 OR CONFIG_BOARD STREQUAL evkmimxrt1060 OR CONFIG_BOARD STREQUAL evkmimxrt1180 OR CONFIG_BOARD STREQUAL mcxn9xxevk OR CONFIG_BOARD STREQUAL mcxn5xxevk OR CONFIG_BOARD STREQUAL frdmmcxn947)))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./example/multicore_examples/erpc_common/erpc_two_way_rpc/service/erpc_two_way_rpc_Core1Interface_client.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./example/multicore_examples/erpc_common/erpc_two_way_rpc/service/c_erpc_two_way_rpc_Core1Interface_client.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./example/multicore_examples/erpc_common/erpc_two_way_rpc/service/erpc_two_way_rpc_Core1Interface_interface.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./example/multicore_examples/erpc_common/erpc_two_way_rpc/service/erpc_two_way_rpc_Core0Interface_server.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./example/multicore_examples/erpc_common/erpc_two_way_rpc/service/c_erpc_two_way_rpc_Core0Interface_server.cpp
  ${CMAKE_CURRENT_LIST_DIR}/./example/multicore_examples/erpc_common/erpc_two_way_rpc/service/erpc_two_way_rpc_Core0Interface_interface.cpp
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./example/multicore_examples/erpc_common/erpc_two_way_rpc/service
)

else()

message(SEND_ERROR "middleware_multicore_erpc_common_two_way_rpc_core1 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_mcmgr)
# Add set(CONFIG_USE_middleware_multicore_mcmgr true) in config.cmake to use this component

message("middleware_multicore_mcmgr component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(((CONFIG_DEVICE_ID STREQUAL K32L3A60xxx OR CONFIG_DEVICE_ID STREQUAL LPC55S69 OR CONFIG_DEVICE_ID STREQUAL LPC55S66 OR CONFIG_DEVICE_ID STREQUAL MIMXRT1165xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1166xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1173xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1175xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1176xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx OR CONFIG_DEVICE_ID STREQUAL KW45B41Z52xxxA OR CONFIG_DEVICE_ID STREQUAL KW45B41Z53xxxA OR CONFIG_DEVICE_ID STREQUAL KW45B41Z82xxxA OR CONFIG_DEVICE_ID STREQUAL KW45B41Z83xxxA OR CONFIG_DEVICE_ID STREQUAL MCXN946 OR CONFIG_DEVICE_ID STREQUAL MCXN947 OR CONFIG_DEVICE_ID STREQUAL MCXN546 OR CONFIG_DEVICE_ID STREQUAL MCXN547 OR CONFIG_DEVICE_ID STREQUAL MCXW716CxxxA OR CONFIG_DEVICE_ID STREQUAL MCXW716AxxxA) OR (CONFIG_BOARD STREQUAL frdmk32l3a6 OR CONFIG_BOARD STREQUAL lpcxpresso55s69 OR CONFIG_BOARD STREQUAL evkmimxrt1160 OR CONFIG_BOARD STREQUAL evkmimxrt1170 OR CONFIG_BOARD STREQUAL evkbmimxrt1170 OR CONFIG_BOARD STREQUAL kw45b41zevk OR CONFIG_BOARD STREQUAL k32w148evk OR CONFIG_BOARD STREQUAL kw45b41zloc OR CONFIG_BOARD STREQUAL evkmimxrt1180 OR CONFIG_BOARD STREQUAL mcxn9xxevk OR CONFIG_BOARD STREQUAL mcxn5xxevk OR CONFIG_BOARD STREQUAL frdmmcxn947 OR CONFIG_BOARD STREQUAL frdmmcxw71)))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./mcmgr/src/mcmgr.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./mcmgr/src
)

if(CONFIG_USE_COMPONENT_CONFIGURATION)
  message("===>Import configuration from ${CMAKE_CURRENT_LIST_FILE}")

  target_compile_definitions(${MCUX_SDK_PROJECT_NAME} PUBLIC
    -DMULTICORE_APP=1
  )

endif()

else()

message(SEND_ERROR "middleware_multicore_mcmgr dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_mcmgr_imxrt1170)
# Add set(CONFIG_USE_middleware_multicore_mcmgr_imxrt1170 true) in config.cmake to use this component

message("middleware_multicore_mcmgr_imxrt1170 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_mcmgr AND CONFIG_USE_driver_mu AND (CONFIG_BOARD STREQUAL evkmimxrt1170 OR CONFIG_BOARD STREQUAL evkbmimxrt1170))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./mcmgr/src/mcmgr_internal_core_api_imxrt1170.c
  ${CMAKE_CURRENT_LIST_DIR}/./mcmgr/src/mcmgr_mu_internal.c
)

else()

message(SEND_ERROR "middleware_multicore_mcmgr_imxrt1170 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_imxrt1170_bm)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_imxrt1170_bm true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_imxrt1170_bm component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmimxrt1170 OR CONFIG_BOARD STREQUAL evkbmimxrt1170))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/imxrt1170/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/imxrt1170
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_imxrt1170_bm dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_imxrt1170_freertos)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_imxrt1170_freertos true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_imxrt1170_freertos component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmimxrt1170 OR CONFIG_BOARD STREQUAL evkbmimxrt1170) AND CONFIG_USE_middleware_freertos-kernel AND CONFIG_USE_middleware_freertos-kernel_heap_4)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/imxrt1170/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/imxrt1170
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_imxrt1170_freertos dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_bm_config_imxrt1170)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_bm_config_imxrt1170 true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_bm_config_imxrt1170 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_rpmsg_lite AND CONFIG_USE_middleware_multicore_rpmsg_lite_bm AND CONFIG_USE_middleware_multicore_mcmgr_imxrt1170 AND (CONFIG_BOARD STREQUAL evkmimxrt1170 OR CONFIG_BOARD STREQUAL evkbmimxrt1170) AND CONFIG_USE_middleware_multicore_rpmsg_lite_imxrt1170_bm)

add_config_file(${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application/rpmsg_config.h "" middleware_multicore_rpmsg_lite_bm_config_imxrt1170)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_bm_config_imxrt1170 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_freertos_config_imxrt1170)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_freertos_config_imxrt1170 true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_freertos_config_imxrt1170 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_rpmsg_lite AND CONFIG_USE_middleware_multicore_rpmsg_lite_freertos AND CONFIG_USE_middleware_multicore_mcmgr_imxrt1170 AND (CONFIG_BOARD STREQUAL evkmimxrt1170 OR CONFIG_BOARD STREQUAL evkbmimxrt1170) AND CONFIG_USE_middleware_multicore_rpmsg_lite_imxrt1170_freertos)

add_config_file(${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application/rpmsg_config.h "" middleware_multicore_rpmsg_lite_freertos_config_imxrt1170)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_freertos_config_imxrt1170 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_mcxnx4x_bm)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_mcxnx4x_bm true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_mcxnx4x_bm component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL mcxn9xxevk OR CONFIG_BOARD STREQUAL mcxn5xxevk OR CONFIG_BOARD STREQUAL frdmmcxn947))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/mcxnx4x/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/mcxnx4x
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_mcxnx4x_bm dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_mcxnx4x_freertos)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_mcxnx4x_freertos true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_mcxnx4x_freertos component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL mcxn9xxevk OR CONFIG_BOARD STREQUAL mcxn5xxevk OR CONFIG_BOARD STREQUAL frdmmcxn947) AND CONFIG_USE_middleware_freertos-kernel AND CONFIG_USE_middleware_freertos-kernel_heap_4)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/mcxnx4x/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/mcxnx4x
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_mcxnx4x_freertos dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_bm_config_mcxnx4x)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_bm_config_mcxnx4x true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_bm_config_mcxnx4x component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_rpmsg_lite AND CONFIG_USE_middleware_multicore_rpmsg_lite_bm AND CONFIG_USE_middleware_multicore_mcmgr_mcxnx4x AND (CONFIG_BOARD STREQUAL mcxn9xxevk OR CONFIG_BOARD STREQUAL mcxn5xxevk OR CONFIG_BOARD STREQUAL frdmmcxn947) AND CONFIG_USE_middleware_multicore_rpmsg_lite_mcxnx4x_bm)

add_config_file(${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application/rpmsg_config.h "" middleware_multicore_rpmsg_lite_bm_config_mcxnx4x)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_bm_config_mcxnx4x dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_freertos_config_mcxnx4x)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_freertos_config_mcxnx4x true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_freertos_config_mcxnx4x component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_rpmsg_lite AND CONFIG_USE_middleware_multicore_rpmsg_lite_freertos AND CONFIG_USE_middleware_multicore_mcmgr_mcxnx4x AND (CONFIG_BOARD STREQUAL mcxn9xxevk OR CONFIG_BOARD STREQUAL mcxn5xxevk OR CONFIG_BOARD STREQUAL frdmmcxn947) AND CONFIG_USE_middleware_multicore_rpmsg_lite_mcxnx4x_freertos)

add_config_file(${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application/rpmsg_config.h "" middleware_multicore_rpmsg_lite_freertos_config_mcxnx4x)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_freertos_config_mcxnx4x dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_mcmgr_mcxnx4x)
# Add set(CONFIG_USE_middleware_multicore_mcmgr_mcxnx4x true) in config.cmake to use this component

message("middleware_multicore_mcmgr_mcxnx4x component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_mcmgr AND CONFIG_USE_driver_mailbox AND (CONFIG_BOARD STREQUAL mcxn9xxevk OR CONFIG_BOARD STREQUAL mcxn5xxevk OR CONFIG_BOARD STREQUAL frdmmcxn947))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./mcmgr/src/mcmgr_internal_core_api_mcxnx4x.c
)

else()

message(SEND_ERROR "middleware_multicore_mcmgr_mcxnx4x dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_mcmgr_lpc55s69)
# Add set(CONFIG_USE_middleware_multicore_mcmgr_lpc55s69 true) in config.cmake to use this component

message("middleware_multicore_mcmgr_lpc55s69 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_mcmgr AND CONFIG_USE_driver_mailbox)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./mcmgr/src/mcmgr_internal_core_api_lpc55s69.c
)

else()

message(SEND_ERROR "middleware_multicore_mcmgr_lpc55s69 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_lpcxpresso55s69_bm)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_lpcxpresso55s69_bm true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_lpcxpresso55s69_bm component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL lpcxpresso55s69))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/lpc55s69/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/lpc55s69
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_lpcxpresso55s69_bm dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_lpcxpresso55s69_freertos)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_lpcxpresso55s69_freertos true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_lpcxpresso55s69_freertos component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL lpcxpresso55s69) AND CONFIG_USE_middleware_freertos-kernel AND CONFIG_USE_middleware_freertos-kernel_heap_4)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/lpc55s69/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/lpc55s69
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_lpcxpresso55s69_freertos dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_bm_config_lpcxpresso55s69)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_bm_config_lpcxpresso55s69 true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_bm_config_lpcxpresso55s69 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_rpmsg_lite AND CONFIG_USE_middleware_multicore_rpmsg_lite_bm AND CONFIG_USE_middleware_multicore_mcmgr_lpc55s69 AND (CONFIG_BOARD STREQUAL lpcxpresso55s69) AND CONFIG_USE_middleware_multicore_rpmsg_lite_lpcxpresso55s69_bm)

add_config_file(${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application/rpmsg_config.h "" middleware_multicore_rpmsg_lite_bm_config_lpcxpresso55s69)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_bm_config_lpcxpresso55s69 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_freertos_config_lpcxpresso55s69)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_freertos_config_lpcxpresso55s69 true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_freertos_config_lpcxpresso55s69 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_rpmsg_lite AND CONFIG_USE_middleware_multicore_rpmsg_lite_freertos AND CONFIG_USE_middleware_multicore_mcmgr_lpc55s69 AND (CONFIG_BOARD STREQUAL lpcxpresso55s69) AND CONFIG_USE_middleware_multicore_rpmsg_lite_lpcxpresso55s69_freertos)

add_config_file(${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application/rpmsg_config.h "" middleware_multicore_rpmsg_lite_freertos_config_lpcxpresso55s69)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_freertos_config_lpcxpresso55s69 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_imx8mm_m4_bm)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_imx8mm_m4_bm true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_imx8mm_m4_bm component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmimx8mm))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/imx8mm_m4/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/imx8mm_m4
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_imx8mm_m4_bm dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_imx8mm_m4_freertos)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_imx8mm_m4_freertos true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_imx8mm_m4_freertos component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmimx8mm) AND CONFIG_USE_middleware_freertos-kernel AND CONFIG_USE_middleware_freertos-kernel_heap_4)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/imx8mm_m4/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/imx8mm_m4
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_imx8mm_m4_freertos dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_bm_config)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_bm_config true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_bm_config component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_rpmsg_lite AND (CONFIG_BOARD STREQUAL evkmimx8mq) AND CONFIG_USE_middleware_multicore_rpmsg_lite_imx8mq_m4_bm)

add_config_file(${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application/rpmsg_config.h "" middleware_multicore_rpmsg_lite_bm_config)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_bm_config dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_freertos_config)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_freertos_config true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_freertos_config component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_rpmsg_lite AND (CONFIG_BOARD STREQUAL evkmimx8mq) AND CONFIG_USE_middleware_multicore_rpmsg_lite_imx8mq_m4_freertos)

add_config_file(${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application/rpmsg_config.h "" middleware_multicore_rpmsg_lite_freertos_config)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_freertos_config dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_imx93_m33_bm)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_imx93_m33_bm true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_imx93_m33_bm component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL mcimx93evk OR CONFIG_BOARD STREQUAL mcimx93qsb OR CONFIG_BOARD STREQUAL mcimx93autoevk))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/imx93_m33/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/imx93_m33
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_imx93_m33_bm dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_imx93_m33_freertos)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_imx93_m33_freertos true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_imx93_m33_freertos component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL mcimx93evk OR CONFIG_BOARD STREQUAL mcimx93qsb OR CONFIG_BOARD STREQUAL mcimx93autoevk) AND CONFIG_USE_middleware_freertos-kernel AND CONFIG_USE_middleware_freertos-kernel_heap_4)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/imx93_m33/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/imx93_m33
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_imx93_m33_freertos dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_mcmgr_kw45b41)
# Add set(CONFIG_USE_middleware_multicore_mcmgr_kw45b41 true) in config.cmake to use this component

message("middleware_multicore_mcmgr_kw45b41 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_mcmgr AND CONFIG_USE_driver_imu AND (CONFIG_BOARD STREQUAL kw45b41zevk OR CONFIG_BOARD STREQUAL kw45b41zloc))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./mcmgr/src/mcmgr_internal_core_api_kw45b41.c
  ${CMAKE_CURRENT_LIST_DIR}/./mcmgr/src/mcmgr_internal_core_api_kw45b41_ext.c
  ${CMAKE_CURRENT_LIST_DIR}/./mcmgr/src/mcmgr_imu_internal.c
)

else()

message(SEND_ERROR "middleware_multicore_mcmgr_kw45b41 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_kw45b41zloc_bm)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_kw45b41zloc_bm true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_kw45b41zloc_bm component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL kw45b41zloc))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/kw45b41/rpmsg_platform.c
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/kw45b41/rpmsg_platform_ext.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/kw45b41
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_kw45b41zloc_bm dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_kw45b41zloc_nbu_bm)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_kw45b41zloc_nbu_bm true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_kw45b41zloc_nbu_bm component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL kw45b41zloc))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/kw45b41/rpmsg_platform.c
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/kw45b41/rpmsg_platform_ext.c
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_bm.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/kw45b41
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_kw45b41zloc_nbu_bm dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_kw45b41zloc_nbu_threadx)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_kw45b41zloc_nbu_threadx true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_kw45b41zloc_nbu_threadx component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL kw45b41zloc) AND CONFIG_USE_middleware_wireless_ble_controller_thread_interface)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/kw45b41/rpmsg_platform.c
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/kw45b41/rpmsg_platform_ext.c
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_threadx.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/kw45b41
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_kw45b41zloc_nbu_threadx dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_kw45b41zloc_freertos)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_kw45b41zloc_freertos true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_kw45b41zloc_freertos component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_rpmsg_lite AND CONFIG_USE_middleware_multicore_rpmsg_lite_freertos AND (CONFIG_BOARD STREQUAL kw45b41zloc) AND CONFIG_USE_middleware_freertos-kernel)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/kw45b41/rpmsg_platform.c
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/kw45b41/rpmsg_platform_ext.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/kw45b41
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_kw45b41zloc_freertos dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_bm_config_kw45b41zloc)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_bm_config_kw45b41zloc true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_bm_config_kw45b41zloc component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_rpmsg_lite AND CONFIG_USE_middleware_multicore_rpmsg_lite_bm AND CONFIG_USE_middleware_multicore_mcmgr_kw45b41 AND (CONFIG_BOARD STREQUAL kw45b41zloc) AND CONFIG_USE_middleware_multicore_rpmsg_lite_kw45b41zloc_bm)

add_config_file(${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application/rpmsg_config.h "" middleware_multicore_rpmsg_lite_bm_config_kw45b41zloc)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_bm_config_kw45b41zloc dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_freertos_config_kw45b41zloc)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_freertos_config_kw45b41zloc true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_freertos_config_kw45b41zloc component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_rpmsg_lite AND CONFIG_USE_middleware_multicore_rpmsg_lite_freertos AND CONFIG_USE_middleware_multicore_mcmgr_kw45b41 AND (CONFIG_BOARD STREQUAL kw45b41zloc) AND CONFIG_USE_middleware_multicore_rpmsg_lite_kw45b41zloc_freertos)

add_config_file(${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application/rpmsg_config.h "" middleware_multicore_rpmsg_lite_freertos_config_kw45b41zloc)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_freertos_config_kw45b41zloc dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_kw45b41zevk_bm)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_kw45b41zevk_bm true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_kw45b41zevk_bm component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL kw45b41zevk))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/kw45b41/rpmsg_platform.c
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/kw45b41/rpmsg_platform_ext.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/kw45b41
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_kw45b41zevk_bm dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_kw45b41zevk_nbu_bm)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_kw45b41zevk_nbu_bm true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_kw45b41zevk_nbu_bm component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL kw45b41zevk))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/kw45b41/rpmsg_platform.c
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/kw45b41/rpmsg_platform_ext.c
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_bm.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/kw45b41
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_kw45b41zevk_nbu_bm dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_kw45b41zevk_nbu_threadx)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_kw45b41zevk_nbu_threadx true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_kw45b41zevk_nbu_threadx component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL kw45b41zevk) AND CONFIG_USE_middleware_wireless_ble_controller_thread_interface)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/kw45b41/rpmsg_platform.c
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/kw45b41/rpmsg_platform_ext.c
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_threadx.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/kw45b41
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_kw45b41zevk_nbu_threadx dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_kw45b41zevk_freertos)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_kw45b41zevk_freertos true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_kw45b41zevk_freertos component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_rpmsg_lite AND CONFIG_USE_middleware_multicore_rpmsg_lite_freertos AND (CONFIG_BOARD STREQUAL kw45b41zevk) AND CONFIG_USE_middleware_freertos-kernel)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/kw45b41/rpmsg_platform.c
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/kw45b41/rpmsg_platform_ext.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/kw45b41
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_kw45b41zevk_freertos dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_bm_config_kw45b41zevk)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_bm_config_kw45b41zevk true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_bm_config_kw45b41zevk component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_rpmsg_lite AND CONFIG_USE_middleware_multicore_rpmsg_lite_bm AND CONFIG_USE_middleware_multicore_mcmgr_kw45b41 AND (CONFIG_BOARD STREQUAL kw45b41zevk) AND CONFIG_USE_middleware_multicore_rpmsg_lite_kw45b41zevk_bm)

add_config_file(${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application/rpmsg_config.h "" middleware_multicore_rpmsg_lite_bm_config_kw45b41zevk)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_bm_config_kw45b41zevk dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_freertos_config_kw45b41zevk)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_freertos_config_kw45b41zevk true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_freertos_config_kw45b41zevk component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_rpmsg_lite AND CONFIG_USE_middleware_multicore_rpmsg_lite_freertos AND CONFIG_USE_middleware_multicore_mcmgr_kw45b41 AND (CONFIG_BOARD STREQUAL kw45b41zevk) AND CONFIG_USE_middleware_multicore_rpmsg_lite_kw45b41zevk_freertos)

add_config_file(${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application/rpmsg_config.h "" middleware_multicore_rpmsg_lite_freertos_config_kw45b41zevk)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_freertos_config_kw45b41zevk dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_imxrt1180_bm)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_imxrt1180_bm true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_imxrt1180_bm component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmimxrt1180))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/imxrt1180/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/imxrt1180
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_imxrt1180_bm dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_imxrt1180_freertos)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_imxrt1180_freertos true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_imxrt1180_freertos component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmimxrt1180) AND CONFIG_USE_middleware_freertos-kernel AND CONFIG_USE_middleware_freertos-kernel_heap_4)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/imxrt1180/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/imxrt1180
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_imxrt1180_freertos dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_bm_config_imxrt1180)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_bm_config_imxrt1180 true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_bm_config_imxrt1180 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_rpmsg_lite AND CONFIG_USE_middleware_multicore_rpmsg_lite_bm AND CONFIG_USE_middleware_multicore_mcmgr_imxrt1180 AND (CONFIG_BOARD STREQUAL evkmimxrt1180) AND CONFIG_USE_middleware_multicore_rpmsg_lite_imxrt1180_bm)

add_config_file(${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application/rpmsg_config.h "" middleware_multicore_rpmsg_lite_bm_config_imxrt1180)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_bm_config_imxrt1180 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_freertos_config_imxrt1180)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_freertos_config_imxrt1180 true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_freertos_config_imxrt1180 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_rpmsg_lite AND CONFIG_USE_middleware_multicore_rpmsg_lite_freertos AND CONFIG_USE_middleware_multicore_mcmgr_imxrt1180 AND (CONFIG_BOARD STREQUAL evkmimxrt1180) AND CONFIG_USE_middleware_multicore_rpmsg_lite_imxrt1180_freertos)

add_config_file(${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application/rpmsg_config.h "" middleware_multicore_rpmsg_lite_freertos_config_imxrt1180)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_freertos_config_imxrt1180 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_mcmgr_imxrt1180)
# Add set(CONFIG_USE_middleware_multicore_mcmgr_imxrt1180 true) in config.cmake to use this component

message("middleware_multicore_mcmgr_imxrt1180 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_mcmgr AND CONFIG_USE_driver_mu1 AND (CONFIG_BOARD STREQUAL evkmimxrt1180))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./mcmgr/src/mcmgr_internal_core_api_imxrt1180.c
  ${CMAKE_CURRENT_LIST_DIR}/./mcmgr/src/mcmgr_mu_internal.c
)

else()

message(SEND_ERROR "middleware_multicore_mcmgr_imxrt1180 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_mcmgr_k32l3a6)
# Add set(CONFIG_USE_middleware_multicore_mcmgr_k32l3a6 true) in config.cmake to use this component

message("middleware_multicore_mcmgr_k32l3a6 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_mcmgr AND CONFIG_USE_driver_mu AND (CONFIG_BOARD STREQUAL frdmk32l3a6))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./mcmgr/src/mcmgr_internal_core_api_k32l3a6.c
  ${CMAKE_CURRENT_LIST_DIR}/./mcmgr/src/mcmgr_mu_internal.c
)

else()

message(SEND_ERROR "middleware_multicore_mcmgr_k32l3a6 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_k32l3a6_bm)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_k32l3a6_bm true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_k32l3a6_bm component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL frdmk32l3a6))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/k32l3a6/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/k32l3a6
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_k32l3a6_bm dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_k32l3a6_freertos)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_k32l3a6_freertos true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_k32l3a6_freertos component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL frdmk32l3a6) AND CONFIG_USE_middleware_freertos-kernel AND CONFIG_USE_middleware_freertos-kernel_heap_4)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/k32l3a6/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/k32l3a6
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_k32l3a6_freertos dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_bm_config_k32l3a6)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_bm_config_k32l3a6 true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_bm_config_k32l3a6 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_rpmsg_lite AND CONFIG_USE_middleware_multicore_rpmsg_lite_bm AND CONFIG_USE_middleware_multicore_mcmgr_k32l3a6 AND (CONFIG_BOARD STREQUAL frdmk32l3a6) AND CONFIG_USE_middleware_multicore_rpmsg_lite_k32l3a6_bm)

add_config_file(${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application/rpmsg_config.h "" middleware_multicore_rpmsg_lite_bm_config_k32l3a6)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_bm_config_k32l3a6 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_freertos_config_k32l3a6)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_freertos_config_k32l3a6 true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_freertos_config_k32l3a6 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_rpmsg_lite AND CONFIG_USE_middleware_multicore_rpmsg_lite_freertos AND CONFIG_USE_middleware_multicore_mcmgr_k32l3a6 AND (CONFIG_BOARD STREQUAL frdmk32l3a6) AND CONFIG_USE_middleware_multicore_rpmsg_lite_k32l3a6_freertos)

add_config_file(${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application/rpmsg_config.h "" middleware_multicore_rpmsg_lite_freertos_config_k32l3a6)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_freertos_config_k32l3a6 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_mcmgr_mcxw716)
# Add set(CONFIG_USE_middleware_multicore_mcmgr_mcxw716 true) in config.cmake to use this component

message("middleware_multicore_mcmgr_mcxw716 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_mcmgr AND CONFIG_USE_driver_imu AND (CONFIG_BOARD STREQUAL frdmmcxw71))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./mcmgr/src/mcmgr_internal_core_api_mcxw716.c
  ${CMAKE_CURRENT_LIST_DIR}/./mcmgr/src/mcmgr_internal_core_api_mcxw716_ext.c
  ${CMAKE_CURRENT_LIST_DIR}/./mcmgr/src/mcmgr_imu_internal.c
)

else()

message(SEND_ERROR "middleware_multicore_mcmgr_mcxw716 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_frdmmcxw71_bm)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_frdmmcxw71_bm true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_frdmmcxw71_bm component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL frdmmcxw71))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/kw45b41/rpmsg_platform.c
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/kw45b41/rpmsg_platform_ext.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/kw45b41
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_frdmmcxw71_bm dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_frdmmcxw71_nbu_bm)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_frdmmcxw71_nbu_bm true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_frdmmcxw71_nbu_bm component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL frdmmcxw71))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/kw45b41/rpmsg_platform.c
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/kw45b41/rpmsg_platform_ext.c
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_bm.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/kw45b41
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_frdmmcxw71_nbu_bm dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_frdmmcxw71_nbu_threadx)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_frdmmcxw71_nbu_threadx true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_frdmmcxw71_nbu_threadx component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL frdmmcxw71) AND CONFIG_USE_middleware_wireless_ble_controller_thread_interface)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/kw45b41/rpmsg_platform.c
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/kw45b41/rpmsg_platform_ext.c
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_threadx.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/kw45b41
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_frdmmcxw71_nbu_threadx dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_frdmmcxw71_freertos)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_frdmmcxw71_freertos true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_frdmmcxw71_freertos component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_rpmsg_lite AND CONFIG_USE_middleware_multicore_rpmsg_lite_freertos AND (CONFIG_BOARD STREQUAL frdmmcxw71) AND CONFIG_USE_middleware_freertos-kernel)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/kw45b41/rpmsg_platform.c
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/kw45b41/rpmsg_platform_ext.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/kw45b41
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_frdmmcxw71_freertos dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_bm_config_frdmmcxw71)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_bm_config_frdmmcxw71 true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_bm_config_frdmmcxw71 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_rpmsg_lite AND CONFIG_USE_middleware_multicore_rpmsg_lite_bm AND CONFIG_USE_middleware_multicore_mcmgr_mcxw716 AND (CONFIG_BOARD STREQUAL frdmmcxw71) AND CONFIG_USE_middleware_multicore_rpmsg_lite_frdmmcxw71_bm)

add_config_file(${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application/rpmsg_config.h "" middleware_multicore_rpmsg_lite_bm_config_frdmmcxw71)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_bm_config_frdmmcxw71 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_freertos_config_frdmmcxw71)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_freertos_config_frdmmcxw71 true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_freertos_config_frdmmcxw71 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_rpmsg_lite AND CONFIG_USE_middleware_multicore_rpmsg_lite_freertos AND CONFIG_USE_middleware_multicore_mcmgr_mcxw716 AND (CONFIG_BOARD STREQUAL frdmmcxw71) AND CONFIG_USE_middleware_multicore_rpmsg_lite_frdmmcxw71_freertos)

add_config_file(${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application/rpmsg_config.h "" middleware_multicore_rpmsg_lite_freertos_config_frdmmcxw71)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_freertos_config_frdmmcxw71 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_evkmimxrt685_bm)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_evkmimxrt685_bm true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_evkmimxrt685_bm component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmimxrt685))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/imxrt600_m33/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/imxrt600_m33
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_evkmimxrt685_bm dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_evkmimxrt685_hifi4_bm)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_evkmimxrt685_hifi4_bm true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_evkmimxrt685_hifi4_bm component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmimxrt685))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/imxrt600_hifi4/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/imxrt600_hifi4
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_evkmimxrt685_hifi4_bm dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_evkmimxrt685_freertos)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_evkmimxrt685_freertos true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_evkmimxrt685_freertos component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmimxrt685) AND CONFIG_USE_middleware_freertos-kernel AND CONFIG_USE_middleware_freertos-kernel_heap_4)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/imxrt600_m33/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/imxrt600_m33
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_evkmimxrt685_freertos dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_mimxrt685audevk_bm)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_mimxrt685audevk_bm true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_mimxrt685audevk_bm component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL mimxrt685audevk))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/imxrt600_m33/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/imxrt600_m33
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_mimxrt685audevk_bm dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_mimxrt685audevk_hifi4_bm)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_mimxrt685audevk_hifi4_bm true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_mimxrt685audevk_hifi4_bm component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL mimxrt685audevk))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/imxrt600_hifi4/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/imxrt600_hifi4
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_mimxrt685audevk_hifi4_bm dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_mimxrt685audevk_freertos)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_mimxrt685audevk_freertos true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_mimxrt685audevk_freertos component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL mimxrt685audevk) AND CONFIG_USE_middleware_freertos-kernel AND CONFIG_USE_middleware_freertos-kernel_heap_4)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/imxrt600_m33/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/imxrt600_m33
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_mimxrt685audevk_freertos dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_mcmgr_imxrt1160)
# Add set(CONFIG_USE_middleware_multicore_mcmgr_imxrt1160 true) in config.cmake to use this component

message("middleware_multicore_mcmgr_imxrt1160 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_mcmgr AND CONFIG_USE_driver_mu AND (CONFIG_BOARD STREQUAL evkmimxrt1160))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./mcmgr/src/mcmgr_internal_core_api_imxrt1160.c
  ${CMAKE_CURRENT_LIST_DIR}/./mcmgr/src/mcmgr_mu_internal.c
)

else()

message(SEND_ERROR "middleware_multicore_mcmgr_imxrt1160 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_imxrt1160_bm)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_imxrt1160_bm true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_imxrt1160_bm component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmimxrt1160))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/imxrt1160/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/imxrt1160
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_imxrt1160_bm dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_imxrt1160_freertos)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_imxrt1160_freertos true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_imxrt1160_freertos component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmimxrt1160) AND CONFIG_USE_middleware_freertos-kernel AND CONFIG_USE_middleware_freertos-kernel_heap_4)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/imxrt1160/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/imxrt1160
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_imxrt1160_freertos dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_bm_config_imxrt1160)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_bm_config_imxrt1160 true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_bm_config_imxrt1160 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_rpmsg_lite AND CONFIG_USE_middleware_multicore_rpmsg_lite_bm AND CONFIG_USE_middleware_multicore_mcmgr_imxrt1160 AND (CONFIG_BOARD STREQUAL evkmimxrt1160) AND CONFIG_USE_middleware_multicore_rpmsg_lite_imxrt1160_bm)

add_config_file(${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application/rpmsg_config.h "" middleware_multicore_rpmsg_lite_bm_config_imxrt1160)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_bm_config_imxrt1160 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_freertos_config_imxrt1160)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_freertos_config_imxrt1160 true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_freertos_config_imxrt1160 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_rpmsg_lite AND CONFIG_USE_middleware_multicore_rpmsg_lite_freertos AND CONFIG_USE_middleware_multicore_mcmgr_imxrt1160 AND (CONFIG_BOARD STREQUAL evkmimxrt1160) AND CONFIG_USE_middleware_multicore_rpmsg_lite_imxrt1160_freertos)

add_config_file(${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application/rpmsg_config.h "" middleware_multicore_rpmsg_lite_freertos_config_imxrt1160)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_freertos_config_imxrt1160 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_mcmgr_k32w1)
# Add set(CONFIG_USE_middleware_multicore_mcmgr_k32w1 true) in config.cmake to use this component

message("middleware_multicore_mcmgr_k32w1 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_mcmgr AND CONFIG_USE_driver_imu AND (CONFIG_BOARD STREQUAL k32w148evk))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./mcmgr/src/mcmgr_internal_core_api_k32w1.c
  ${CMAKE_CURRENT_LIST_DIR}/./mcmgr/src/mcmgr_internal_core_api_k32w1_ext.c
  ${CMAKE_CURRENT_LIST_DIR}/./mcmgr/src/mcmgr_imu_internal.c
)

else()

message(SEND_ERROR "middleware_multicore_mcmgr_k32w1 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_k32w148evk_bm)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_k32w148evk_bm true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_k32w148evk_bm component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL k32w148evk))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/k32w1/rpmsg_platform.c
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/k32w1/rpmsg_platform_ext.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/k32w1
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_k32w148evk_bm dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_k32w148evk_freertos)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_k32w148evk_freertos true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_k32w148evk_freertos component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_rpmsg_lite AND CONFIG_USE_middleware_multicore_rpmsg_lite_freertos AND (CONFIG_BOARD STREQUAL k32w148evk) AND CONFIG_USE_middleware_freertos-kernel)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/k32w1/rpmsg_platform.c
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/k32w1/rpmsg_platform_ext.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/k32w1
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_k32w148evk_freertos dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_bm_config_k32w148evk)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_bm_config_k32w148evk true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_bm_config_k32w148evk component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_rpmsg_lite AND CONFIG_USE_middleware_multicore_rpmsg_lite_bm AND CONFIG_USE_middleware_multicore_mcmgr_k32w1 AND (CONFIG_BOARD STREQUAL k32w148evk) AND CONFIG_USE_middleware_multicore_rpmsg_lite_k32w148evk_bm)

add_config_file(${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application/rpmsg_config.h "" middleware_multicore_rpmsg_lite_bm_config_k32w148evk)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_bm_config_k32w148evk dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_freertos_config_k32w148evk)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_freertos_config_k32w148evk true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_freertos_config_k32w148evk component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_rpmsg_lite AND CONFIG_USE_middleware_multicore_rpmsg_lite_freertos AND CONFIG_USE_middleware_multicore_mcmgr_k32w1 AND (CONFIG_BOARD STREQUAL k32w148evk) AND CONFIG_USE_middleware_multicore_rpmsg_lite_k32w148evk_freertos)

add_config_file(${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application/rpmsg_config.h "" middleware_multicore_rpmsg_lite_freertos_config_k32w148evk)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_freertos_config_k32w148evk dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_imx8mp_m7_bm)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_imx8mp_m7_bm true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_imx8mp_m7_bm component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmimx8mp))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/imx8mp_m7/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/imx8mp_m7
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_imx8mp_m7_bm dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_imx8mp_m7_freertos)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_imx8mp_m7_freertos true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_imx8mp_m7_freertos component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmimx8mp) AND CONFIG_USE_middleware_freertos-kernel AND CONFIG_USE_middleware_freertos-kernel_heap_4)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/imx8mp_m7/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/imx8mp_m7
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_imx8mp_m7_freertos dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_imx8mq_m4_bm)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_imx8mq_m4_bm true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_imx8mq_m4_bm component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmimx8mq))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/imx8mq_m4/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/imx8mq_m4
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_imx8mq_m4_bm dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_imx8mq_m4_freertos)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_imx8mq_m4_freertos true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_imx8mq_m4_freertos component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmimx8mq) AND CONFIG_USE_middleware_freertos-kernel)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/imx8mq_m4/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/imx8mq_m4
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_imx8mq_m4_freertos dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_imx8mn_m7_bm)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_imx8mn_m7_bm true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_imx8mn_m7_bm component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmimx8mn OR CONFIG_BOARD STREQUAL evkmimx8mnddr3l))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/imx8mn_m7/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/imx8mn_m7
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_imx8mn_m7_bm dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_imx8mn_m7_freertos)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_imx8mn_m7_freertos true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_imx8mn_m7_freertos component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmimx8mn OR CONFIG_BOARD STREQUAL evkmimx8mnddr3l) AND CONFIG_USE_middleware_freertos-kernel AND CONFIG_USE_middleware_freertos-kernel_heap_4)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/imx8mn_m7/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/imx8mn_m7
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_imx8mn_m7_freertos dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_imx7ulp_m4_bm)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_imx7ulp_m4_bm true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_imx7ulp_m4_bm component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmcimx7ulp))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/imx7ulp_m4/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/imx7ulp_m4
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_imx7ulp_m4_bm dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_imx7ulp_m4_freertos)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_imx7ulp_m4_freertos true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_imx7ulp_m4_freertos component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmcimx7ulp) AND CONFIG_USE_middleware_freertos-kernel AND CONFIG_USE_middleware_freertos-kernel_heap_4)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/imx7ulp_m4/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/imx7ulp_m4
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_imx7ulp_m4_freertos dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_bm_config_imx7ulp_m4)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_bm_config_imx7ulp_m4 true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_bm_config_imx7ulp_m4 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_rpmsg_lite AND CONFIG_USE_middleware_multicore_rpmsg_lite_bm AND (CONFIG_BOARD STREQUAL evkmcimx7ulp) AND CONFIG_USE_middleware_multicore_rpmsg_lite_imx7ulp_m4_bm)

add_config_file(${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application/rpmsg_config.h "" middleware_multicore_rpmsg_lite_bm_config_imx7ulp_m4)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_bm_config_imx7ulp_m4 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_freertos_config_imx7ulp_m4)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_freertos_config_imx7ulp_m4 true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_freertos_config_imx7ulp_m4 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_rpmsg_lite AND CONFIG_USE_middleware_multicore_rpmsg_lite_freertos AND (CONFIG_BOARD STREQUAL evkmcimx7ulp) AND CONFIG_USE_middleware_multicore_rpmsg_lite_imx7ulp_m4_freertos)

add_config_file(${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application/rpmsg_config.h "" middleware_multicore_rpmsg_lite_freertos_config_imx7ulp_m4)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/template_application
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_freertos_config_imx7ulp_m4 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_evkmimxrt595_bm)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_evkmimxrt595_bm true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_evkmimxrt595_bm component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmimxrt595))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/imxrt500_m33/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/imxrt500_m33
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_evkmimxrt595_bm dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_evkmimxrt595_fusionf1_bm)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_evkmimxrt595_fusionf1_bm true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_evkmimxrt595_fusionf1_bm component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmimxrt595))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/imxrt500_fusionf1/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/imxrt500_fusionf1
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_evkmimxrt595_fusionf1_bm dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite_evkmimxrt595_freertos)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite_evkmimxrt595_freertos true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite_evkmimxrt595_freertos component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmimxrt595) AND CONFIG_USE_middleware_freertos-kernel AND CONFIG_USE_middleware_freertos-kernel_heap_4)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/rpmsg_lite/porting/platform/imxrt500_m33/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./rpmsg_lite/lib/include/platform/imxrt500_m33
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite_evkmimxrt595_freertos dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()

