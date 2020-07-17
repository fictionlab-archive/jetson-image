#!/bin/bash -e

mkdir -p "${ROOTFS_DIR}"
rsync --info=progress2 --no-i-r -h -aHAXx --exclude var/cache/apt/archives "${EXPORT_ROOTFS_DIR}/" "${ROOTFS_DIR}/"
