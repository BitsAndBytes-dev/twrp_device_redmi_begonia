#!/system/bin/sh
# This script is needed to automatically set device props.

load_begonia()
{
    resetprop "ro.product.name" "begonia"
    resetprop "ro.build.product" "begonia"
    resetprop "ro.product.device" "begonia"
    resetprop "ro.product.system.device" "begonia"
    resetprop "ro.product.vendor.device" "begonia"
    resetprop "ro.vendor.product.device" "begonia"
}

load_begoniain()
{
    resetprop "ro.product.name" "begoniain"
    resetprop "ro.build.product" "begoniain"
    resetprop "ro.product.device" "begoniain"
    resetprop "ro.product.system.device" "begoniain"
    resetprop "ro.product.vendor.device" "begoniain"
    resetprop "ro.vendor.product.device" "begoniain"
}

variant=$(getprop ro.boot.hwc)
echo $variant

case $variant in
    "India")
        load_begoniain
        ;;
    *)
        load_begonia
        ;;
esac

exit 0
