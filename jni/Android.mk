LOCAL_PATH := $(call my-dir)
#openssl-1.0.0a
#OPENSSL_PATH := $(LOCAL_PATH)/libs
#openssl-1.1.2f
OPENSSL_PATH := $(LOCAL_PATH)/libs2
#openssl-1.0.2k
#OPENSSL_PATH := $(LOCAL_PATH)/libs3
include $(CLEAR_VARS)

LOCAL_MODULE    := openssl
LOCAL_SRC_FILES := openssl.cpp
LOCAL_C_INCLUDES := ./ \
					$(OPENSSL_PATH)/include/ \
					$(OPENSSL_PATH)/include/openssl \

LOCAL_STATIC_LIBRARIES := ssl crypto
LOCAL_LDLIBS += -lz
LOCAL_LDLIBS += -latomic 

include $(BUILD_SHARED_LIBRARY)

include $(OPENSSL_PATH)/crypto/Android.mk
include $(OPENSSL_PATH)/ssl/Android.mk