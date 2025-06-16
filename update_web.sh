#!/bin/bash
#
source ./exports.sh

export LAS_VERSION=0.0.1

curl -f -L https://github.com/skunks13/lsa/releases/download/v$LAS_VERSION/las-dist-$LAS_VERSION.tar.gz -o $SOURCE_DIR/las-$LAS_VERSION.tar.gz

mkdir -p $SOURCE_DIR/las-$LAS_VERSION
tar -C $SOURCE_DIR/las-$LAS_VERSION -xvzf $SOURCE_DIR/las-$LAS_VERSION.tar.gz

sudo mkdir -p $INSTALL_PREFIX/share/gvm/gsad/web/
sudo cp -rv $SOURCE_DIR/las-$LAS_VERSION/* $INSTALL_PREFIX/share/gvm/gsad/web/
