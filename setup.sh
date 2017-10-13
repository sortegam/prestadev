#!/bin/bash

PRESTASHOP_VERSION="1.7.2.3"
PRESTASHOP_GITHUB="https://github.com/PrestaShop/PrestaShop"
PRESTASHOP_BASE_DIR="./prestashop"
PRESTASHOP_SRC="$PRESTASHOP_BASE_DIR/src"

echo "--- Removing old versions of prestashop ---"
rm -rf $PRESTASHOP_SRC > /dev/null
mkdir -p $PRESTASHOP_BASE_DIR
echo "--- Downloading Prestashop $PRESTASHOP_VERSION git repository [Please Wait] ---"
git clone --quiet $PRESTASHOP_GITHUB $PRESTASHOP_SRC
echo "--- Download finished! ---"
sleep 2
echo "--- Preparing Prestashop version [$PRESTASHOP_VERSION] ---"
cd $PRESTASHOP_SRC
git checkout --quiet refs/tags/$PRESTASHOP_VERSION
cd ../..
echo "--- Prestashop $PRESTASHOP_VERSION Installation [DONE] ---"
echo "---------------------------------------------------"
echo "To initialize dev environment run: docker-compose up"
echo "Routes:"
echo " - Frontend store: http://localhost:8080"
echo " - Backoffice store: http://localhost:8080/admin123"
echo "---------------------------------------------------"
echo "Enjoy! By @sortegam"
echo "---------------------------------------------------"
