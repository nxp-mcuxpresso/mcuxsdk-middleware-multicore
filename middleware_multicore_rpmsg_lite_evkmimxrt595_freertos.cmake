#Description: Remote Procedure Messaging Lite porting layer for evkmimxrt595 board; user_visible: False
include_guard(GLOBAL)
message("middleware_multicore_rpmsg_lite_evkmimxrt595_freertos component is included.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/porting/platform/imxrt500_m33/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/include/platform/imxrt500_m33
)


include(middleware_freertos-kernel_heap_4)
