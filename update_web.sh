#!/bin/bash
#
source ./exports.sh

export LSA_VERSION=24.3.0

curl -f -L https://github.com/skunks13/lsa/releases/download/v$LSA_VERSION/gsa-dist-$LSA_VERSION.tar.gz -o $SOURCE_DIR/gsa-$LSA_VERSION.tar.gz

mkdir -p $SOURCE_DIR/gsa-$LSA_VERSION
tar -C $SOURCE_DIR/gsa-$LSA_VERSION -xvzf $SOURCE_DIR/gsa-$LSA_VERSION.tar.gz

sudo mkdir -p $INSTALL_PREFIX/share/gvm/gsad/web/
sudo cp -rv $SOURCE_DIR/gsa-$LSA_VERSION/* $INSTALL_PREFIX/share/gvm/gsad/web/
