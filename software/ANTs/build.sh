#!/bin/bash

set -euo pipefail

install_prefix=$(realpath $1)/install
build_prefix=$(realpath $1)/src/build

rm -rf ${build_prefix}

mkdir -p ${build_prefix}
mkdir -p ${install_prefix}

( cd ${build_prefix}
cmake ../ANTs -DCMAKE_INSTALL_PREFIX=${install_prefix} -DITK_BUILD_MINC_SUPPORT=ON -DUSE_VTK=ON -DBUILD_TESTING=OFF  &&
make -j12 &&
make install )
