#!/bin/bash

output=$( npx vue-i18n-locale-message status --provider=poeditor-service-provider --conf=poeditor-service-provider-conf.json )
result=$?
echo $output
if [ "$result" -eq 0 ]; then
  echo 'Translation completed!'
elif [ "$result" -eq 4 ]; then
  echo 'Translation WIP!'
  exit 1
else
  exit 1
fi
