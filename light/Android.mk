LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := android.hardware.light@2.0-service.xiaomi_olive
LOCAL_MODULE_TAGS  := optional

LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_EXTRA_VNDK_VERSIONS)/bin
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE_STEM := android.hardware.light@2.0-service

LOCAL_SRC_FILES := \
    service.cpp \
    Light.cpp

LOCAL_REQUIRED_MODULES := \
    android.hardware.light@2.0-service.xiaomi_olive.rc

LOCAL_SHARED_LIBRARIES := \
    libbase \
    libhardware \
    libhidlbase \
    libhidltransport \
    liblog \
    libhwbinder \
    libutils \
    android.hardware.light@2.0

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE := android.hardware.light@2.0-service.xiaomi_olive.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC

LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/init
LOCAL_MODULE_STEM := android.hardware.light@2.0-service.rc

LOCAL_SRC_FILES := android.hardware.light@2.0-service.xiaomi_olive.rc

include $(BUILD_PREBUILT)
