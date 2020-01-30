#!/bin/bash
cd /opt/makepkg/rpm
find . -type f -maxdepth 1 -path '*rpm' -exec rm -f '{}' ';'
fpm -s dir -t rpm --rpm-os linux -d httpd -d ansible -v ${PKG_VERSION} --iteration ${GIT_HASH} -n ${PKG_NAME}  -C /opt/makepkg/pkg
exit $?
