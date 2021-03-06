#!/usr/bin/env bash

# python 2 instead of python 3 as the (temporary) default python
virtualenv -p "C:\Python27\python.exe" --distribute temp-python
source temp-python/bin/activate

# Initialize the environment with the envsetup.sh script
source build/envsetup.sh #. build/envsetup.sh

# Choose which target to build with lunch
lunch aosp_arm-eng

# Build the Code
make -j4

# deactivate python 2 instead of python 3 as the (temporary) default python
deactivate