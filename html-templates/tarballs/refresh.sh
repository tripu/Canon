#!/bin/bash

if [ "tarballs" != "$(basename `pwd`)" ]; then
    echo 'Oops! Run inside “tarball” directory.'
    exit 1
fi

rm *.tar.gz

cp -r ../4-separate-css-and-js/ canon-template-separate-css-and-js
tar -czf canon-template-separate-css-and-js.tar.gz canon-template-separate-css-and-js/
rm canon-template-separate-css-and-js/*
rmdir canon-template-separate-css-and-js/

cp -r ../5-additional-files/ canon-template-additional-files
tar -czf canon-template-additional-files.tar.gz canon-template-additional-files/
rm canon-template-additional-files/*
rmdir canon-template-additional-files/
