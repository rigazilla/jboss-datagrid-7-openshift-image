#!/bin/sh
set -e

JBOSS_HOME=/opt/datagrid

unset DEBUG_QUERY_API_PARAM

SCRIPT_DIR=$(dirname $0)
ADDED_DIR=${SCRIPT_DIR}/added

mkdir -p ${JBOSS_HOME}/bin/queryapi
cp -r ${ADDED_DIR}/queryapi/* ${JBOSS_HOME}/bin/queryapi
chmod -R ugo+x $JBOSS_HOME/bin/queryapi
