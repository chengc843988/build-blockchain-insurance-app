#!/bin/bash
# only with nodejs > '6.9.X', now is node: '6.12.3' 2018/02/01
cd web ; npm install; cd .. 
cp ./binary_ubuntu/* .
export FABRIC_CFG_PATH=$PWD
sh ./ibm_fabric.sh
sh ./docker-images.sh
sleep 5
docker-compose up -d
