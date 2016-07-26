LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS:= eng
LOCAL_SRC_FILES:= $(call all-java-files-under src)
LOCAL_PACKAGE_NAME:= MyApplication

include $(BUILD_PACKAGE)
