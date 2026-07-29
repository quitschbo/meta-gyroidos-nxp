FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://${MACHINE}.cfg"

SRC_URI += "file://0001-arm64-dts-lx2160a-enable-crypto-device-node-for-CAAM.patch"

SRC_URI += "file://0001-crypto-caam-drop-CRYPTO_ALG_ALLOCATES_MEMORY-on-paes.patch"

KBUILD_DEFCONFIG:tqma8mpxl = "defconfig"
KBUILD_DEFCONFIG:tqmlx2160a = "defconfig"
KBUILD_DEFCONFIG:ls1088ardb-pb = "defconfig"
KERNEL_FEATURES:remove = "cfg/fs/vfat.scc"

# since kernel 6.17, this was renamed
KERNEL_DEVICETREE:tqma8mpxl:remove = "freescale/imx8mp-tqma8mpql-mba8mpxl-lvds.dtb"
KERNEL_DEVICETREE:tqma8mpxl:remove = "freescale/imx8mp-tqma8mpql-mba8mpxl-lvds.dtbo"
KERNEL_DEVICETREE:tqma8mpxl:append = " freescale/imx8mp-tqma8mpql-mba8mpxl-lvds-tm070jvhg33.dtb"
KERNEL_DEVICETREE:tqma8mpxl:append = " freescale/imx8mp-tqma8mpql-mba8mpxl-lvds-tm070jvhg33.dtbo"

SRC_URI:append:tqmlx2160a = "\
    file://tq/qoriq/disable-imx-platforms.cfg \
    file://tq/qoriq/disable_suspend.cfg \
    file://tq/qoriq/dpaa2.cfg \
    file://tq/qoriq/smmu-bypass.cfg \
    file://tq/features/nonimx-drm-removal.cfg \
    file://tq/features/debug.cfg \
    file://tq/features/devicetree.cfg \
    file://tq/features/network.cfg \
    file://tq/features/rm-non-tq-platforms.cfg \
    file://tq/features/ubi.cfg \
    file://tq/features/usb.cfg \
    file://tq/features/trusted-keys.cfg \
"
