#!/bin/bash
#

source ../exports.sh

sudo apt install -y rust-all

sudo apt install -y \
  pkg-config \
  libssl-dev

curl -f -L https://github.com/greenbone/openvas-scanner/archive/refs/tags/v$OPENVAS_DAEMON.tar.gz -o $SOURCE_DIR/openvas-scanner-$OPENVAS_DAEMON.tar.gz

tar -C $SOURCE_DIR -xvzf $SOURCE_DIR/openvas-scanner-$OPENVAS_DAEMON.tar.gz

mkdir -p $INSTALL_DIR/openvasd/usr/local/bin
cd $SOURCE_DIR/openvas-scanner-$OPENVAS_DAEMON/rust/src/openvasd
cargo build --release

cd $SOURCE_DIR/openvas-scanner-$OPENVAS_DAEMON/rust/src/scannerctl
cargo build --release

sudo cp -v ../target/release/openvasd $INSTALL_DIR/openvasd/usr/local/bin/
sudo cp -v ../target/release/scannerctl $INSTALL_DIR/openvasd/usr/local/bin/
sudo cp -rv $INSTALL_DIR/openvasd/* /
