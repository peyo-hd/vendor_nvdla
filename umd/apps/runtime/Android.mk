LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

ROOT := vendor/nvdla/umd

LOCAL_MODULE := nvdla_runtime

LOCAL_SRC_FILES := \
    DlaImage.cpp \
    DlaImageUtils.cpp \
    Server.cpp \
    RuntimeTest.cpp \
    TestUtils.cpp \
    main.cpp

LOCAL_C_INCLUDES := \
    $(ROOT)/core/include \
    $(ROOT)/external/include

LOCAL_SHARED_LIBRARIES := \
    libnvdla_runtime

LOCAL_STATIC_LIBRARIES := \
    libjpeg_static_ndk

LOCAL_CPPFLAGS := \
    -DNVDLA_UTILS_ERROR_TAG="\"DLA_TEST\"" \
    -fexceptions \
    -Wno-unused-parameter \
    -Wno-unused-function

include $(BUILD_EXECUTABLE)
