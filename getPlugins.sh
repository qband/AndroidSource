#!/usr/bin/env bash

# add git config to use sock5 proxy
# reference: http://git-scm.com/docs/git-config
git config --global http.proxy 'socks5://127.0.0.1:7070'
git config --global https.proxy 'socks5://127.0.0.1:7070'

# googlesource
prefix=https://android.googlesource.com
# IDE
repo1=platform/tools/idea
# sdk manager
repo2=platform/tools/base

# pull down the source code
git clone $prefix/$repo1 $repo1
git clone $prefix/$repo2 $repo2

# remove git config
git config --global --unset http.proxy
git config --global --unset https.proxy
