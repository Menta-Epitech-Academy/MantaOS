#!/bin/bash
set -e

echo "=== Téléchargement de TIC-80 ==="

cd /tmp

git clone --recursive https://github.com/nesbox/TIC-80 && cd TIC-80/build

cmake -DBUILD_SDLGPU=On -DBUILD_WITH_ALL=On -DBUILD_PRO=0n .. && cmake --build . --parallel 2
sudo make install

cd /tmp
rm -rf TIC-80


echo "=== TIC-80 installé ==="
