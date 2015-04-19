#!/usr/bin/env bash

# install Repo
mkdir -p ~/bin
PATH=~/bin:$PATH
proxychains curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo

# modify the shebang line in a python script
sed --in-place '1s:#\!/usr/bin/env.*:#\!/usr/bin/env python2:' ~/bin/repo

# Initialize a Repo client
#WORKING_DIRECTORY=~/Documents/JetBrains/IDEA/AndroidSource
#mkdir -p $WORKING_DIRECTORY
#cd $WORKING_DIRECTORY
# bring down the latest version of Repo & specify a URL for the manifest
proxychains repo init -u https://android.googlesource.com/platform/manifest

# pull down the Android source tree
proxychains repo sync