include_guard(GLOBAL)


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


if (CONFIG_USE_middleware_multicore)
# Add set(CONFIG_USE_middleware_multicore true) in config.cmake to use this component

message("middleware_multicore component is included from ${CMAKE_CURRENT_LIST_FILE}.")


endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(((CONFIG_DEVICE_ID STREQUAL MIMXRT1181xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1182xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx) OR (CONFIG_BOARD STREQUAL evkmimxrt1180)) AND (CONFIG_USE_middleware_multicore_rpmsg_lite_bm OR CONFIG_USE_middleware_multicore_rpmsg_lite_freertos OR CONFIG_USE_middleware_multicore_rpmsg_lite_xos OR CONFIG_USE_middleware_multicore_rpmsg_lite_azurertos))

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


if (CONFIG_USE_middleware_multicore_mcmgr)
# Add set(CONFIG_USE_middleware_multicore_mcmgr true) in config.cmake to use this component

message("middleware_multicore_mcmgr component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(((CONFIG_DEVICE_ID STREQUAL MIMXRT1181xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1182xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx) OR (CONFIG_BOARD STREQUAL evkmimxrt1180)))

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


if (CONFIG_USE_middleware_multicore_erpc_common)
# Add set(CONFIG_USE_middleware_multicore_erpc_common true) in config.cmake to use this component

message("middleware_multicore_erpc_common component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(((CONFIG_DEVICE_ID STREQUAL MIMXRT1181xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1182xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx) OR (CONFIG_BOARD STREQUAL evkmimxrt1180)))

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


if (CONFIG_USE_middleware_multicore_erpc)
# Add set(CONFIG_USE_middleware_multicore_erpc true) in config.cmake to use this component

message("middleware_multicore_erpc component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(((CONFIG_DEVICE_ID STREQUAL MIMXRT1181xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1182xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx) OR (CONFIG_BOARD STREQUAL evkmimxrt1180)))

else()

message(SEND_ERROR "middleware_multicore_erpc dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_erpc_common_multicore)
# Add set(CONFIG_USE_middleware_multicore_erpc_common_multicore true) in config.cmake to use this component

message("middleware_multicore_erpc_common_multicore component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(((CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx) OR (CONFIG_BOARD STREQUAL evkmimxrt1180)))

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

if(((CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx) OR (CONFIG_BOARD STREQUAL evkmimxrt1180)))

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

if(((CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx) OR (CONFIG_BOARD STREQUAL evkmimxrt1180)))

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

if(((CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx) OR (CONFIG_BOARD STREQUAL evkmimxrt1180)))

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

if(((CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx) OR (CONFIG_BOARD STREQUAL evkmimxrt1180)))

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


if (CONFIG_USE_middleware_multicore_erpc_common_multiprocessor)
# Add set(CONFIG_USE_middleware_multicore_erpc_common_multiprocessor true) in config.cmake to use this component

message("middleware_multicore_erpc_common_multiprocessor component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(((CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx) OR (CONFIG_BOARD STREQUAL evkmimxrt1180)))

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

if(((CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx) OR (CONFIG_BOARD STREQUAL evkmimxrt1180)))

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

if(((CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx) OR (CONFIG_BOARD STREQUAL evkmimxrt1180)))

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

