# android source

## dependencies
### Linux

proxychains
virtualenv

libtinfo
gperf

### Windows

- [cntlm](http://cntlm.sourceforge.net/)
- [git-repo](https://github.com/esrlabs/git-repo)
- make
- virtualenv
	- Run in Git Bash
	- export HTTP_PROXY="http://127.0.0.1:3128"
	- export HTTPS_PROXY=$HTTP_PROXY
	- pip install virtualenv

### MacOS

```shell
brew install gpg
```

## download android source

### Linux

use proxychains to solve proxy problem,
please run as:
```shell
proxychains make download-linux
```

### Windows

use cntlm to solve proxy problem,
please run in Git Bash:
```shell
http_proxy=http://127.0.0.1:3128 https_proxy=http://127.0.0.1:3128 make download-windows
```
### MacOS

use v2ray and polipo to solve proxy problem. set http proxy at http://127.0.0.1:9050
```shell
http_proxy=http://127.0.0.1:9050 https_proxy=http://127.0.0.1:9050 make download-linux
```
