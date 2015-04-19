#!/usr/bin/env bash

# install Repo
mkdir -p ~/bin
PATH=~/bin:$PATH
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo

# modify the shebang line in a python script
sed --in-place '1s:#\!/usr/bin/env.*:#\!/usr/bin/env python2:' ~/bin/repo

# Initialize a Repo client
# bring down the latest version of Repo & specify a URL for the manifest
repo init -u https://android.googlesource.com/platform/manifest

# pull down the Android source tree
repo sync