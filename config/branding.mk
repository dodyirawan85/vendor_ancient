# Set all versions
ANCIENT_BUILD_TYPE ?= PREHISTORIC
ANCIENT_BUILD_DATE := $(shell date +%Y%m%d-%H%M)
ANCIENT_RELEASE_TYPE ?= PREHISTORIC
ANCIENT_PLATFORM_VERSION := 10.0
ANCIENT_BASE_EDITION := CIVILIZATION
ANCIENT_VERSION_CUSTOM := CIVILIZATION-v2.0
BUILD_VERSION := v2.0
ifeq ($(ANCIENT_RELEASE_TYPE), OFFICIAL)
    ANCIENT := PRIMEVAL
else
    ANCIENT := PREHISTORIC
endif

TARGET_PRODUCT_SHORT := $(subst ancient_,,$(ANCIENT_BUILD))

ANCIENT_VERSION := AncientOS-$(ANCIENT_BASE_EDITION)-$(BUILD_VERSION)-$(ANCIENT_BUILD)-$(ANCIENT_RELEASE_TYPE)-$(ANCIENT_BUILD_DATE)
ANCIENT_FINGERPRINT := Ancient/$(ANCIENT_PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(ANCIENT_BUILD_DATE)

ANCIENT_PROPERTIES := \
    ro.ancient.custom.version=$(ANCIENT_VERSION_CUSTOM) \
    ro.ancient.version=$(ANCIENT_VERSION) \
    ro.ancient.build_date=$(ANCIENT_BUILD_DATE) \
    ro.ancient.build_type=$(ANCIENT_BUILD_TYPE) \
    ro.ancient.fingerprint=$(ANCIENT_FINGERPRINT) \
    ro.ancient.release_type=$(ANCIENT_RELEASE_TYPE) \
    ro.ancient=$(ANCIENT)
