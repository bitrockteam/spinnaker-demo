#!/bin/bash
cd /opt/makepkg/rpm
find . -type f -maxdepth 1 -path '*rpm' -exec rm -f '{}' ';'
fpm -s dir -t rpm --rpm-os linux  -v 1 --iteration 1 -n ${PKG_NAME}  -C /opt/makepkg/pkg
exit $?
