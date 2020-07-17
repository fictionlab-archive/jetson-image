#!/bin/bash -e

mkdir -p "${DEPLOY_DIR}"

"${STAGE_WORK_DIR}/Linux_for_Tegra/tools/jetson-disk-image-creator.sh" -o "${DEPLOY_DIR}/${IMG_FILENAME}" -b jetson-xavier-nx-devkit
