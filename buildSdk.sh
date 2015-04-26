#!/usr/bin/env bash

# python 2 instead of python 3 as the (temporary) default python
virtualenv -p /usr/bin/python2.7 --distribute temp-python
source temp-python/bin/activate

# Initialize the environment with the envsetup.sh script
source build/envsetup.sh #. build/envsetup.sh

# Choose which target to build with lunch
lunch sdk-eng

# Build the Code
make win_sdk

# deactivate python 2 instead of python 3 as the (temporary) default python
deactivate
