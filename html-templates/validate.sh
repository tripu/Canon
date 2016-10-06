#!/bin/bash

VNU="../validator/build/dist/vnu.jar"
URL="http://localhost/canon/html-templates/"
PAGES="index.html 1-minimal/ 2-functional/ 3-embedded-css-js/ 4-separate-css-js/ 5-metadata/ 6-libraries/ 7-responsive/"

for page in $PAGES; do
    echo Checking $page …
    java -jar $VNU $URL$page
done
