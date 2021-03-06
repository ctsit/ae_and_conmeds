#!/bin/bash

forms=( adverse_events medications )

echo "Packaging forms into REDCap instruments"
for form in "${forms[@]}"
do
    echo "Packaging form $form"
    rm -f instrument.csv
    cp $form.csv instrument.csv
    zip $form.zip instrument.csv README.md LICENSE.txt CHANGELOG.md
    rm -f instrument.csv
    echo "Upload $form.zip to library"
done
