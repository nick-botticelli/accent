ARCHS = arm64 arm64e
THEOS_PACKAGE_SCHEME = rootless
#SDKVERSION = 14.5
SYSROOT = $(THEOS)/sdks/iPhoneOS14.5.sdk

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = AccentPreferences

AccentPreferences_FILES = APBRootListController.m
AccentPreferences_INSTALL_PATH = /Library/PreferenceBundles
AccentPreferences_FRAMEWORKS = UIKit
AccentPreferences_PRIVATE_FRAMEWORKS = Preferences
AccentPreferences_CFLAGS = -fobjc-arc -DTHEOS_LEAN_AND_MEAN
AccentPreferences_EXTRA_FRAMEWORKS += Cephei CepheiPrefs
AccentPreferences_LIBRARIES = colorpicker

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/AccentPreferences.plist$(ECHO_END)
