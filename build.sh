#!/bin/bash
cd /opt/makepkg/rpm
find . -type f -maxdepth 1 -path '*rpm' -exec rm -f '{}' ';'
fpm -s dir -t rpm --rpm-os linux  -v ${PKG_VERSION} --iteration 0 -n ${PKG_NAME}  -C /opt/makepkg/pkg
exit $?
