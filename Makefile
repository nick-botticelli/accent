ARCHS = arm64 arm64e
export DEBUG = 0
export FINALPACKAGE = 1
export THEOS_PACKAGE_SCHEME = rootless
export TARGET = iphone:clang:latest:15.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Accent

Accent_FILES = Tweak.x
Accent_CFLAGS = -fobjc-arc
Accent_EXTRA_FRAMEWORKS += Cephei
Accent_LIBRARIES = colorpicker
SDKVERSION = 14.5
SYSROOT = $(THEOS)/sdks/iPhoneOS14.5.sdk

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += accentpreferences
include $(THEOS_MAKE_PATH)/aggregate.mk

