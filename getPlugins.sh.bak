#!/usr/bin/env bash

# add git config to use sock5 proxy
# reference: http://git-scm.com/docs/git-config
git config --global http.proxy 'socks5://127.0.0.1:7070'
git config --global https.proxy 'socks5://127.0.0.1:7070'

# googlesource
prefix=https://android.googlesource.com
# IDE
repo1=platform/tools/idea
# sdk tools
repo2=platform/sdk
repo3=platform/tools/base
repo4=platform/tools/swt
repo9=platform/prebuilts/devtools
# build tool
repo5=platform/manifest
repo6=platform/build
repo7=platform/tools/build
repo8=platform/tools/buildSrc

# pull down the source code
git clone $prefix/$repo1 $repo1
git clone $prefix/$repo2 $repo2
git clone $prefix/$repo3 $repo3
git clone $prefix/$repo4 $repo4
git clone $prefix/$repo5 $repo5
git clone $prefix/$repo6 $repo6
git clone $prefix/$repo7 $repo7
git clone $prefix/$repo8 $repo8
git clone $prefix/$repo9 $repo9

# remove git config
git config --global --unset http.proxy
git config --global --unset https.proxy
