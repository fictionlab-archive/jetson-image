#!/bin/bash -e

log "Downloading the L4T Driver Package"
wget -t 3 -O "${STAGE_WORK_DIR}/l4t.tbz2" "${L4T_URL}"

log "Unpacking the L4T Driver Package"
tar -xf "${STAGE_WORK_DIR}/l4t.tbz2" -C "${STAGE_WORK_DIR}"

log "Applying L4T binaries"
export LDK_ROOTFS_DIR="${ROOTFS_DIR}"
"${STAGE_WORK_DIR}/Linux_for_Tegra/apply_binaries.sh"
