LOCAL_PATH:= $(call my-dir)
Include $(CLEAN_VARS)

Ifneq ($(filter f488, $(TARGET_DEVICE)),)
Include $(call all-makefile-unter, $(LOCAL_PATH))
Endif
