#android source tree
##Linux
use proxychains to solve GFW problem,
please run as:
proxychains sh get*Source.sh

##Windows
use cntlm to solve GFW problem,
please run in Git Bash:
export HTTP_PROXY=127.0.0.1:3128
export HTTPS_PROXY=127.0.0.1:3128
get*SourceWin.sh

#dependencies
##Linux
proxychains
virtualenv

libtinfo
gperf

##Windows
cntlm
git-repo
