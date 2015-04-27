#!/usr/bin/env bash

# python 2 instead of python 3 as the (temporary) default python
virtualenv -p /usr/bin/python2.7 --distribute temp-python
source temp-python/bin/activate

# install Repo
mkdir -p ~/bin
PATH=~/bin:$PATH
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo

# Initialize a Repo client
# bring down the latest version of Repo & specify a URL for the manifest
repo init -u https://android.googlesource.com/platform/manifest -b master -g all,-notdefault

# pull down the Android source tree
until repo sync; do
	echo sync failed, retrying in 3 seconds...
	sleep 3
done

# deactivate python 2 instead of python 3 as the (temporary) default python
deactivate

