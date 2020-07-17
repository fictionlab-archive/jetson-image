#!/bin/bash -e

if [ -d "${ROOTFS_DIR}" ]; then
    exit 0
fi

log "Downloading base image"
wget -t 3 -O "${STAGE_WORK_DIR}/base.tar.gz" "${BASE_IMG_URL}"

log "Unpacking the filesystem"	
mkdir -p "${ROOTFS_DIR}"
tar -xzf "${STAGE_WORK_DIR}/base.tar.gz" -C "${ROOTFS_DIR}"

cp -v /usr/bin/qemu-aarch64-static "${ROOTFS_DIR}/usr/bin/"
