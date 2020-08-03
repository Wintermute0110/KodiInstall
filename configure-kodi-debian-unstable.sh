#!/bin/bash

# Creates build directory and configures Kodi build.

source configuration.sh
echo "Kodi source directory  $KODI_SOURCE_DIR"
echo "Kodi build directory   $KODI_BUILD_DIR"
echo "Kodi install directory $KODI_INSTALL_DIR"

# Create build directory.
mkdir -p $KODI_BUILD_DIR
cd $KODI_BUILD_DIR

# Flatbuffers is now on Debian Unstable (March 2020).
# Options:
#   -DVERBOSE=ON
#   -DENABLE_INTERNAL_FLATBUFFERS=ON
#   -DX11_RENDER_SYSTEM=gl   Required in Matrix, could be gl or gles

# Kodi Leia
# cmake $KODI_SOURCE_DIR -DCMAKE_INSTALL_PREFIX=$KODI_INSTALL_DIR

# Kodi Matrix
cmake $KODI_SOURCE_DIR -DX11_RENDER_SYSTEM=gl -DCMAKE_INSTALL_PREFIX=$KODI_INSTALL_DIR
