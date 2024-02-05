ARCHS = arm64 arm64e
TARGET = iphone:11.2:7:0
THEOS_PACKAGE_SCHEME=roothide


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = AlertDismiss
$(TWEAK_NAME)_FILES = Tweak.xm
$(TWEAK_NAME)_CFLAGS = -fobjc-arc
$(TWEAK_NAME)_LDFLAGS += -lroothide
$(TWEAK_NAME)_CODESIGN_FLAGS = -Sentitlements.plist

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += alertdismisspreferences
include $(THEOS_MAKE_PATH)/aggregate.mk
