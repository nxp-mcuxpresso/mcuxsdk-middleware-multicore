include_guard(GLOBAL)


if (CONFIG_USE_middleware_multicore)
# Add set(CONFIG_USE_middleware_multicore true) in config.cmake to use this component

message("middleware_multicore component is included from ${CMAKE_CURRENT_LIST_FILE}.")


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


if (CONFIG_USE_middleware_multicore_mcmgr)
# Add set(CONFIG_USE_middleware_multicore_mcmgr true) in config.cmake to use this component

message("middleware_multicore_mcmgr component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(((CONFIG_BOARD STREQUAL k32w148evk)))

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


if (CONFIG_USE_middleware_multicore_mcmgr_k32w1)
# Add set(CONFIG_USE_middleware_multicore_mcmgr_k32w1 true) in config.cmake to use this component

message("middleware_multicore_mcmgr_k32w1 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_multicore_mcmgr AND CONFIG_USE_driver_imu AND (CONFIG_BOARD STREQUAL k32w148evk))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./mcmgr/src/mcmgr_internal_core_api_k32w1.c
  ${CMAKE_CURRENT_LIST_DIR}/./mcmgr/src/mcmgr_imu_internal.c
)

else()

message(SEND_ERROR "middleware_multicore_mcmgr_k32w1 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_multicore_rpmsg_lite)
# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite true) in config.cmake to use this component

message("middleware_multicore_rpmsg_lite component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(((CONFIG_BOARD STREQUAL k32w148evk)) AND (CONFIG_USE_middleware_multicore_rpmsg_lite_bm OR CONFIG_USE_middleware_multicore_rpmsg_lite_freertos OR CONFIG_USE_middleware_multicore_rpmsg_lite_xos OR CONFIG_USE_middleware_multicore_rpmsg_lite_azurertos))

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

