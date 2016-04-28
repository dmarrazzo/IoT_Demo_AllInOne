#!/bin/bash

export BUILD_LOGFILE="../build.log"

echo "-Building all images for Fuse IoT Demo"
echo "-- Building Base Image"
pushd .
cd IoT_Demo_Datacenter/Base
docker build --rm -t psteiner/base .
popd

echo "-- Building Fuse Image"
pushd .
cd IoT_Demo_Datacenter/Fuse
docker build --rm -t psteiner/fuse .
popd

echo "-- Building Postgres Image"
pushd .
cd IoT_Demo_Datacenter/Postgres
docker build --rm -t iotdemodatacenter_postgres .
popd

echo "-- Building Datagrid Image"
pushd .
cd IoT_Demo_Datacenter/Postgres
docker build --rm -t iotdemodatacenter_postgres .
popd
