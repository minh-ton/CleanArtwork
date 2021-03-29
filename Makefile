TARGET := iphone:clang::13.3
ARCHS = arm64 arm64e
DEBUG=0

PACKAGE_VERSION = $(THEOS_PACKAGE_BASE_VERSION)
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CleanArtwork

CleanArtwork_FILES = Tweak.x
CleanArtwork_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
