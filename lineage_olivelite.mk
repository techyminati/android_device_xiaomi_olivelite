#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from the common Open Source configuration.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from the common LineageOS configuration.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from device
$(call inherit-product, device/xiaomi/olivelite/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := olivelite
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_olivelite
PRODUCT_MODEL := Redmi 8A

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="olivelite-user 10 QKQ1.191014.001 V12.5.1.0.QCPINXM release-keys" \
    PRODUCT_NAME="olivelite" \
    TARGET_DEVICE="olivelite"

BUILD_FINGERPRINT := Xiaomi/olivelite/olivelite:10/QKQ1.191014.001/V12.5.1.0.QCPINXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
