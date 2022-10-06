LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

ROOT := vendor/nvdla/umd

LOCAL_MODULE := libnvdla_runtime

LOCAL_SRC_FILES := \
    ../common/Check.cpp \
    ../common/ErrorLogging.c \
    ../common/EMUInterface.cpp \
    ../common/EMUInterfaceA.cpp \
    ../common/Loadable.cpp \
    ../../../port/linux/nvdla.c \
    ../../../port/linux/nvdla_os.c \
    Emulator.cpp \
    Runtime.cpp

LOCAL_C_INCLUDES := \
    $(ROOT)/core/include \
    $(ROOT)/core/src/common/include \
    $(ROOT)/port/linux/include \
    $(ROOT)/external/include \
    $(LOCAL_PATH)/include

LOCAL_CFLAGS := \
    -DNVDLA_UTILS_ERROR_TAG="\"DLA_RUNTIME\"" \
    -Wno-unused-parameter \

LOCAL_CPPFLAGS := \
    -DNVDLA_UTILS_ERROR_TAG="\"DLA_RUNTIME\"" \
    -fexceptions \
    -Wno-unused-parameter \
    -Wno-unused-function

include $(BUILD_SHARED_LIBRARY)
