#!/bin/bash

curl "http://localhost:4741/works/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
