LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= foo.c bar.c
LOCAL_MODULE:= libmysharedlib
LOCAL_PRELINK_MODULE := false  # Prevent from prelink error

include $(BUILD_SHARED_LIBRARY)
