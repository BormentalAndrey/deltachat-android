APP_PLATFORM := android-21
APP_ABI := arm64-v8a x86_64
APP_STL := none

ifneq ($(NDK_DEBUG),1)
APP_CFLAGS  += -Oz -flto=full -fno-unwind-tables -fno-exceptions -fno-asynchronous-unwind-tables -fomit-frame-pointer
APP_LDFLAGS += -flto=full
endif
