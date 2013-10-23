#create a directory in /system/etc/
    $(shell mkdir -p $(TARGET_OUT)/etc/permissions)
#copy all permission files
    $(shell cp device/actions/gs702a/prebuilt/permissions/xml/* $(TARGET_OUT)/etc/permissions/)
