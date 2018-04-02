#!/usr/bin/env bash

# Set proxy
export HTTP_PROXY=127.0.0.1:3128
export HTTPS_PROXY=$HTTP_PROXY

# Initialize a Repo client

# bring down the latest version of Repo & specify a URL for the manifest
repo init -u https://android.googlesource.com/platform/manifest -b master -g all,-notdefault

# checkout the specified branch for all projects that are declared in your current manifest but if there are projects added/removed between gingerbread and ics (which there are), then you won't get the code for these projects
#repo forall -c 'git checkout master'

# pull down the Android source tree
until repo sync
do
  echo sync failed, retrying in 3 seconds...
  sleep 3
done

