LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(call all-java-files-under, src)
LOCAL_PACKAGE_NAME := Utils
LOCAL_CERTIFICATE := platform
LOCAL_PROGUARD_ENABLED := disabled
LOCAL_JNI_SHARED_LIBRARIES := libnative-activity libc++

include $(BUILD_PACKAGE)
include $(LOCAL_PATH)/native-activity/Android.mk
