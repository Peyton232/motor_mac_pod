#!/bin/bash

echo "Initializing script..."
SCRIPTS_DIR=$(dirname "$0")
cd ${SCRIPTS_DIR}/../
PROJECT_DIR=$(pwd);
TMP_DIR=${PROJECT_DIR}/tmp
IOS_FRAMEWORK_DIR=${PROJECT_DIR}

echo "Tidying environment..."
rm -rfv ${TMP_DIR}
rm -rf ${IOS_FRAMEWORK_DIR}/Motor.xcframework
mkdir -p ${TMP_DIR}

echo "Downloading Release Asset (ios)..."
gh release download --repo 'sonr-io/sonr' --pattern *-ios.tar.gz --dir ${TMP_DIR}
tar -xf ${TMP_DIR}/*-ios.tar.gz -C ${IOS_FRAMEWORK_DIR}
echo "\n"

echo "Cleanup..."
rm -rf ${TMP_DIR}
echo "\n"
