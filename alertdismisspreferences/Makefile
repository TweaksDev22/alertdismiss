ARCHS = arm64 arm64e
TARGET = iphone:11.2:7:0
THEOS_PACKAGE_SCHEME=roothide



include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = AlertDismissPreferences
$(BUNDLE_NAME)_FILES = ALDMRootListController.m
$(BUNDLE_NAME)_INSTALL_PATH = /Library/PreferenceBundles
$(BUNDLE_NAME)_FRAMEWORKS = UIKit
$(BUNDLE_NAME)_PRIVATE_FRAMEWORKS = Preferences
$(BUNDLE_NAME)_LDFLAGS += -lroothide
$(BUNDLE_NAME)_CODESIGN_FLAGS = -Sentitlements.plist

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/AlertDismissPreferences.plist$(ECHO_END)
