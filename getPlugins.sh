#!/usr/bin/env bash

prefix=https://android.googlesource.com

repo1=platform/tools/idea
repo2=platform/tools/base

# IDE
git clone $prefix/$repo1 $repo1

# sdk manager
git clone $prefix/$repo2 $repo2

