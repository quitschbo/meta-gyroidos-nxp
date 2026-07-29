FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-arm64-dts-lx2160a-enable-crypto-device-node-for-CAAM.patch"

SRC_URI += "\
        file://0001-docs-trusted-encrypted-trusted-keys-as-protected-key.patch \
        file://0002-KEYS-trusted-caam-based-protected-key.patch \
        file://0003-crypto-caam-Add-support-of-paes-algorithm.patch \
        file://0001-crypto-caam-drop-CRYPTO_ALG_ALLOCATES_MEMORY-on-paes.patch \
"

KBUILD_DEFCONFIG:tqmlx2160a = "defconfig"
KERNEL_FEATURES:remove = "cfg/fs/vfat.scc"

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
