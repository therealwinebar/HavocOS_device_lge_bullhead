LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_COPY_HEADERS_TO   := dataservices/rmnetctl
LOCAL_COPY_HEADERS      := ../inc/librmnetctl.h

LOCAL_SRC_FILES := librmnetctl.c
LOCAL_CFLAGS := -Wall -Werror

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../inc
LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_C_INCLUDES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include
LOCAL_ADDITIONAL_DEPENDENCIES := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr

LOCAL_MODULE := librmnetctl
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
