#!/usr/bin/env bash

SCRIPT_DIR=$(cd $(dirname "$0"); pwd -P)
MODULE_DIR=$(cd "${SCRIPT_DIR}/.."; pwd -P)


CHART_DIR=$(cd "${MODULE_DIR}/chart/ibm-odm-dev"; pwd -P)

NAME="$1"
DEST_DIR="$2"

echo "Name"
echo "${NAME}"

echo "DEST Dir"
echo "${DEST_DIR}"

echo "Chart Dir"
echo "${CHART_DIR}"

## Add logic here to put the yaml resource content in DEST_DIR

find "${DEST_DIR}" -name "*"

#SERVER_VALUES_FILE="$2"

mkdir -p "${DEST_DIR}"

cp -R "${CHART_DIR}"/* "${DEST_DIR}"

#if [[ -n "${VALUES_CONTENT}" ]]; then
#  echo "${VALUES_CONTENT}" > "${DEST_DIR}/values.yaml"
#fi

#if [[ -n "${VALUES_SERVER_CONTENT}" ]] && [[ -n "${SERVER_VALUES_FILE}" ]]; then
  #echo "${VALUES_SERVER_CONTENT}" > "${DEST_DIR}/${SERVER_VALUES_FILE}"
#fi


# Search for ODM Org and Domain here and update here in VALUES.YAML using YQ
