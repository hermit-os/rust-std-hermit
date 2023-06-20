#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

if [[ $# -ne 0 ]]; then
    echo "Usage: $0"
    exit 1
fi

echo "Installing toolchain $HERMIT_TOOLCHAIN with rustup."
rustup toolchain install $HERMIT_TOOLCHAIN

RUSTC_SYSROOT="$(rustc +$HERMIT_TOOLCHAIN --print=sysroot)"
SCRIPT_DIR="${0%/*}"
echo "Installing rust-std-hermit to $RUSTC_SYSROOT"
"$SCRIPT_DIR/rust-install.sh" --prefix="$RUSTC_SYSROOT" --disable-ldconfig
