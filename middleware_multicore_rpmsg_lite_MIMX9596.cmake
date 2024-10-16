#Description: Remote Procedure Messaging Lite library; user_visible: False
include_guard(GLOBAL)
message("middleware_multicore_rpmsg_lite component is included.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/common/llist.c
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/rpmsg_lite.c
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/rpmsg_ns.c
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/virtio/virtqueue.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/include
)

if(CONFIG_USE_middleware_multicore_rpmsg_lite_zephyr)
    include(middleware_multicore_rpmsg_lite_zephyr)
endif()
