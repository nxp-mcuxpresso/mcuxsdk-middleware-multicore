#Description: RPMsg-Lite FreeRTOS environment layer sources; user_visible: False
include_guard(GLOBAL)
message("middleware_multicore_rpmsg_lite_freertos component is included.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
)

#OR Logic component
if(CONFIG_USE_middleware_freertos-kernel_MIMXRT1166_cm4)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_freertos.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMXRT1166_cm4)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/rpmsg_queue.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMXRT1166_cm7)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_freertos.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMXRT1166_cm7)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/rpmsg_queue.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMX8MQ6)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_freertos.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMX8MQ6)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/rpmsg_queue.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMX8MM6)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_freertos.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMX8MM6)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/rpmsg_queue.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMXRT1173_cm4)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_freertos.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMXRT1173_cm4)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/rpmsg_queue.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMXRT1173_cm7)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_freertos.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMXRT1173_cm7)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/rpmsg_queue.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMX8MN6)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_freertos.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMX8MN6)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/rpmsg_queue.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMX9352)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_freertos.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMX9352)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/rpmsg_queue.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMX9596)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_freertos.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMX9596)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/rpmsg_queue.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_K32L3A60_cm0plus)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_freertos.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_K32L3A60_cm0plus)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/rpmsg_queue.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_K32L3A60_cm4)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_freertos.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_K32L3A60_cm4)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/rpmsg_queue.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMXRT1176_cm4)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_freertos.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMXRT1176_cm4)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/rpmsg_queue.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMXRT1176_cm7)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_freertos.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMXRT1176_cm7)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/rpmsg_queue.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMXRT1175_cm4)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_freertos.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMXRT1175_cm4)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/rpmsg_queue.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMXRT1175_cm7)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_freertos.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMXRT1175_cm7)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/rpmsg_queue.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMXRT1165_cm4)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_freertos.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMXRT1165_cm4)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/rpmsg_queue.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMXRT1165_cm7)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_freertos.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMXRT1165_cm7)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/rpmsg_queue.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_LPC55S69_cm33_core0)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_freertos.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_LPC55S69_cm33_core0)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/rpmsg_queue.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_LPC55S69_cm33_core1)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_freertos.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_LPC55S69_cm33_core1)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/rpmsg_queue.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MCIMX7U5)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_freertos.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MCIMX7U5)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/rpmsg_queue.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMX8ML8)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_freertos.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMX8ML8)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/rpmsg_queue.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMXRT685S_cm33)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_freertos.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMXRT685S_cm33)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/rpmsg_queue.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMXRT595S_cm33)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_freertos.c
)
endif()

if(CONFIG_USE_middleware_freertos-kernel_MIMXRT595S_cm33)
target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/rpmsg_queue.c
)
endif()

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/include/environment/freertos
)


