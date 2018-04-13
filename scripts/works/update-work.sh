#!/bin/bash

curl "http://localhost:4741/vehicles/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "vehicle": {
        "make": "'"${MAKE}"'",
        "model": "'"${MODEL}"'",
        "year": "'"${YEAR}"'"
      }
  }'

echo
