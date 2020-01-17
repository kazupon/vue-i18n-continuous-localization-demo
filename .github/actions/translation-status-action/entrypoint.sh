#!/bin/bash

output=$( npx vue-i18n-locale-message status --provider=poeditor-service-provider --conf=poeditor-service-provider-conf.json )
result=$?
echo $result
if [ "$result" -eq 0 ]; then
  echo 'Translation completed!'
else
  exit 1
fi
