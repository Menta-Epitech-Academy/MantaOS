#!/bin/bash
set -e

cp mantaOs/config pi-gen/
cp -r mantaOs/stage-custom pi-gen/

cd pi-gen
sudo ./build.sh
