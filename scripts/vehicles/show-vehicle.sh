#!/bin/bash

curl "http://localhost:4741/vehicles/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
