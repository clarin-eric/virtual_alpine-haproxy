#!/bin/sh -ex

apk --verbose --progress update --purge # --update-cache
apk --verbose --progress upgrade --latest # --update-cache --available
apk --verbose --progress add --upgrade 'haproxy=1.5.14-r0'
# addgroup -g '12346' 'haproxy'
# adduser -h . -D -G 'haproxy' -H -u '12346' 'haproxy'
# apk --verbose cache sync