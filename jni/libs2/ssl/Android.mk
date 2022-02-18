LOCAL_PATH:= $(call my-dir)

local_c_includes := \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/../include \
	$(LOCAL_PATH)/../include/openssl \
	$(LOCAL_PATH)/../crypto \

local_src_files:= \
	d1_lib.c \
	d1_msg.c \
	d1_srtp.c \
	methods.c \
	pqueue.c \
	s3_cbc.c \
	s3_lib.c \
	s3_enc.c \
	s3_msg.c \
	t1_ext.c \
	t1_lib.c \
	t1_enc.c \
	t1_reneg.c \
	t1_trce.c \
	tls_srp.c \
	ssl_asn1.c \
	ssl_cert.c \
	ssl_ciph.c \
	ssl_conf.c \
	ssl_err.c \
	ssl_init.c \
	ssl_lib.c \
	ssl_mcnf.c \
	ssl_rsa.c \
	ssl_sess.c \
	ssl_stat.c \
	ssl_txt.c \
	bio_ssl.c \
	record/dtls1_bitmap.c \
	record/rec_layer_d1.c \
	record/rec_layer_s3.c \
	record/ssl3_buffer.c \
	record/ssl3_record.c \
	statem/statem.c \
	statem/statem_clnt.c \
	statem/statem_dtls.c \
	statem/statem_lib.c \
	statem/statem_srvr.c \

include $(CLEAR_VARS)
include $(LOCAL_PATH)/../android-config.mk
LOCAL_SRC_FILES += $(local_src_files)
LOCAL_C_INCLUDES += $(local_c_includes)
LOCAL_LDLIBS += -lz
LOCAL_LDLIBS += -latomic 
LOCAL_STATIC_LIBRARIES += libcrypto
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE:= libssl
include $(BUILD_STATIC_LIBRARY)


#include $(LOCAL_PATH)/../crypto/Android.mk
#include $(BUILD_SHARED_LIBRARY)

#ifeq ($(WITH_HOST_DALVIK),true)
#    include $(CLEAR_VARS)
#    include $(LOCAL_PATH)/../android-config.mk
#    LOCAL_SRC_FILES += $(local_src_files)
#    LOCAL_C_INCLUDES += $(local_c_includes)
#    LOCAL_SHARED_LIBRARIES += libcrypto
#    LOCAL_MODULE_TAGS := optional
#    LOCAL_MODULE:= libssl
#    include $(BUILD_SHARED_LIBRARY)
#endif
#
## ssltest
#include $(CLEAR_VARS)
#include $(LOCAL_PATH)/../android-config.mk
#LOCAL_SRC_FILES:= ssltest.c
#LOCAL_C_INCLUDES += $(local_c_includes)
#LOCAL_SHARED_LIBRARIES := libssl libcrypto
#LOCAL_MODULE:= ssltest
#LOCAL_MODULE_TAGS := optional
#include $(BUILD_EXECUTABLE)
