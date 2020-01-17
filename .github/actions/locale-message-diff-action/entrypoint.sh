#!/bin/bash

output=$( npx vue-i18n-locale-message diff --provider=poeditor-service-provider --conf=poeditor-service-provider-conf.json --normalize=hierarchy --target-paths=./tmp/*.json --filename-match=^\([\\w]*\)\\.json )
result=$?
echo $output
echo $result
if [ "$result" -eq 64 ]; then
  exit 0
else
  echo 'No difference!!'
  exit 1
fi