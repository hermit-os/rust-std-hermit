#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

if [[ $# -ne 2 ]]; then
    echo "Usage: ./dist.sh <TOOLCHAIN> <TARGET>"
fi

toolchain=$1
target=$2

pushd rust/build/dist

echo "Extracting distribution artifacts"
tar -xvf rust-std-$toolchain-$target.tar.gz
rm rust-std-$toolchain-$target.tar.gz

pushd rust-std-$toolchain-$target

echo "Modifying distribution artifacts"
mv install.sh rust-install.sh
HERMIT_TOOLCHAIN=$toolchain envsubst '$HERMIT_TOOLCHAIN' < ../../../../install-template.sh > install.sh
chmod +x install.sh

popd

echo "Compressing distribution artifacts"
tar -cavf rust-std-$toolchain-$target{.tar.gz,}

popd
