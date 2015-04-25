#!/usr/bin/env bash

# Set proxy
export HTTP_PROXY=127.0.0.1:3128
export HTTPS_PROXY=127.0.0.1:3128

# Initialize a Repo client
# bring down the latest version of Repo & specify a URL for the manifest
repo init -u https://android.googlesource.com/platform/manifest -b ub-emulator-master

# pull down the Android source tree
until repo sync; do
	echo sync failed, retrying in 3 seconds...
	sleep 3
done
