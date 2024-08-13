LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

APP_CPPFLAGS := -std=c++11

# 指定模块名称
LOCAL_MODULE := libtermexec

# 指定源文件
LOCAL_SRC_FILES := process.cpp

# 指定生成的共享库文件
LOCAL_LDLIBS := -llog

include $(BUILD_SHARED_LIBRARY)
