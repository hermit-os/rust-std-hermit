#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

if [[ $# -ne 0 ]]; then
    echo "Usage: ./install.sh"
fi

export RUSTUP_TOOLCHAIN=$HERMIT_TOOLCHAIN

rustup toolchain install $RUSTUP_TOOLCHAIN

RUSTC_SYSROOT="$(rustc --print=sysroot)"
./rust-install.sh --prefix="$RUSTC_SYSROOT" --disable-ldconfig
