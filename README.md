# android source tree
## Linux

use proxychains to solve proxy problem,
please run as:
proxychains sh getSource.sh

## Windows

use cntlm to solve proxy problem,
please run in Git Bash:
getSourceWin.sh

# dependencies
## Linux

proxychains
virtualenv

libtinfo
gperf

## Windows

- [cntlm](http://cntlm.sourceforge.net/)
- [git-repo](https://github.com/esrlabs/git-repo)
- virtualenv
	- Run in Git Bash
	- export HTTP_PROXY="http://127.0.0.1:3128"
	- export HTTPS_PROXY=$HTTP_PROXY
	- pip install virtualenv
