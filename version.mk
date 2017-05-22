VERSION := v1.0
REFLEX_VERSION ?= ReFlex-$(VERSION)-$(TARGET_DEVICE)-$(PLATFORM_VERSION)-$(shell date +%Y%m%d)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.caf.version=$(shell grep "<default revision=" .repo/manifest.xml | awk -F'"' '{print $$2}' | awk  -F "/" '{print $$3}') \
    ro.reflex.version=$(REFLEX_VERSION)
