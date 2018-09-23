LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := \
	secril-shim.cpp

LOCAL_SHARED_LIBRARIES := \
	liblog \
	libril \
	libcutils \
	libbinder

LOCAL_CFLAGS := -Wall -Werror

#LOCAL_MODULE := libsecril-shim
LOCAL_MODULE := dmitry-ril

include $(BUILD_SHARED_LIBRARY)
