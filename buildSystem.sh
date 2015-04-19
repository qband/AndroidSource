#!/usr/bin/env bash

# Initialize the environment with the envsetup.sh script
source build/envsetup.sh #. build/envsetup.sh

# Choose which target to build with lunch
lunch aosp_arm-eng

# Build the Code
make -j4