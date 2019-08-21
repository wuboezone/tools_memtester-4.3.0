LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SHARED_LIBRARIES := \
liblog \
libcutils \
libutils
LOCAL_MODULE:=memtester
LOCAL_MODULE_TAGS:=optional
LOCAL_SRC_FILES:= \
memtester.c \
tests.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/

include $(BUILD_EXECUTABLE)
include $(call all-makefiles-under,$(LOCAL_PATH))
