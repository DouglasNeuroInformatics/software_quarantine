#!/bin/bash

set -euo pipefail

install_prefix=$(realpath $1)/install
build_prefix=$(realpath $1)/src/build

rm -rf ${build_prefix}

mkdir -p ${build_prefix}
mkdir -p ${install_prefix}

( cd ${build_prefix}
cmake ../minc-toolkit-v2 -DCMAKE_INSTALL_PREFIX=${install_prefix} \
  -DMT_BUILD_ELASTIX=OFF \
	-DMT_BUILD_ABC=ON \
	-DMT_BUILD_ANTS=OFF \
	-DMT_BUILD_OPENBLAS=ON \
	-DMT_BUILD_VISUAL_TOOLS=ON \
	-DMT_BUILD_C3D=OFF \
	-DMT_USE_OPENMP=ON \
	-DUSE_SYSTEM_GLUT=OFF \
	-DBUILD_TESTING=OFF \
	-DMT_BUILD_SHARED_LIBS=OFF \
	-DMT_PACKAGES_PATH=/opt/quarantine/software/minc-toolkit-v2/packagecache &&
make -j24 -k &&
make install )
