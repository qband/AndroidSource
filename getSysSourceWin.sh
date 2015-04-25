#!/usr/bin/env bash

# Initialize a Repo client
# bring down the latest version of Repo & specify a URL for the manifest
repo init -u https://android.googlesource.com/platform/manifest

# pull down the Android source tree
until repo sync; do
	echo sync failed, retrying in 3 seconds...
	sleep 3
done
