#
# This file should be sourced 
#
BUILD_OPENVAS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

export INSTALL_PREFIX=/usr/local
export PATH=$PATH:$INSTALL_PREFIX/sbin

export SOURCE_DIR=$BUILD_OPENVAS_DIR/working/source
export INSTALL_DIR=$BUILD_OPENVAS_DIR/working/install
export BUILD_DIR=$BUILD_OPENVAS_DIR/working/build

export GVM_LIBS_VERSION=22.18.0
export GVMD_VERSION=25.1.1
export PG_GVM_VERSION=22.6.7
export GSA_VERSION=24.3.0
export GSAD_VERSION=24.2.2
export OPENVAS_SMB_VERSION=22.5.3
export OPENVAS_SCANNER_VERSION=23.15.3
export OSPD_OPENVAS_VERSION=22.7.1
export OPENVAS_DAEMON=23.15.3
