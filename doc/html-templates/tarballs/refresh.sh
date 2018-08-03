#!/bin/bash

if [ "tarballs" != "$(basename `pwd`)" ]; then
    echo 'Oops! Run inside “tarball” directory.'
    exit 1
fi

rm *.tar.gz
declare -A templates=( [4]=separate-css-js [5]=metadata [6]=libraries [7]=responsive )

for temp in "${!templates[@]}"; do
    cp -r ../$temp-${templates[$temp]}/ canon-html-template-${templates[$temp]}
    tar -czf canon-html-template-${templates[$temp]}.tar.gz canon-html-template-${templates[$temp]}/
    rm -rf canon-html-template-${templates[$temp]}/
done
