LOCAL_PATH := $(call my-dir)

#GCamGo
include $(CLEAR_VARS)
LOCAL_MODULE := GCamGo
LOCAL_SRC_FILES := priv-app/GCamGo/GCamGo.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_OVERRIDES_PACKAGES := Snap Camera2
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

# OnePlus launcher
include $(CLEAR_VARS)
LOCAL_MODULE := OPLauncher2
LOCAL_SRC_FILES := apk/$(LOCAL_MODULE).apk
LOCAL_PRIVILEGED_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_OVERRIDES_PACKAGES := Launcher3
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := OnePlusRecentsProvider
LOCAL_MODULE_STEM := OnePlusRecentsProvider.apk
LOCAL_SRC_FILES := apk/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/overlay/$(LOCAL_MODULE)
include $(BUILD_PREBUILT)
