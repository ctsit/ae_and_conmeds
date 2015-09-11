#!/bin/bash

forms=( ae_coding adverse_events cm_coding conmeds )

if [ -z "$URL" ] ; then
    echo "The variable URL must be defined.  Please use the command 'export URL=[your_url]' to set it."
    exit
fi

if [ -z "$TOKEN" ] ; then
    echo "The variable TOKEN must be defined.  Please use the command 'export TOKEN=[your_token]' to set it."
    exit
fi

echo "Connecting to your redcap server with TOKEN=$TOKEN, URL=$URL"
  redcap_metadata --token $TOKEN --url $URL > all.csv

echo "Splitting forms"
for form in "${forms[@]}"
do
  echo "Exporting form $form"
  head -n 1 all.csv > $form.csv
  grep ",$form," all.csv >> $form.csv
done
