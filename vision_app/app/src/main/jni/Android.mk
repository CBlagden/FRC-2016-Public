LOCAL_PATH := $(call my-dir)

# add OpenCV
include $(CLEAR_VARS)
OPENCV_INSTALL_MODULES:=on
include  C:\Users\Admin\Downloads\OpenCV-3.1.0-android-sdk\OpenCV-android-sdk\sdk\native\jni\OpenCV.mk

LOCAL_MODULE    := JNIpart
LOCAL_SRC_FILES := jni.c image_processor.cpp
LOCAL_LDLIBS    += -llog -lGLESv2 -lEGL -ldl
LOCAL_CPPFLAGS  += -O3 -std=c++11

include $(BUILD_SHARED_LIBRARY)
