:: set proxy
set http_proxy=127.0.0.1:3128
set https_proxy=127.0.0.1:3128

REM Initialize a Repo client
REM bring down the latest version of Repo & specify a URL for the manifest
repo init -u https://android.googlesource.com/platform/manifest -b ub-tools-master

:: pull down the Android source tree
repo sync