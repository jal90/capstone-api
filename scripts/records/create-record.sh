#!/bin/bash

curl "http://localhost:4741/records" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "record": {
        "user_id": "'"${USER}"'",
        "work_id": "'"${WORK}"'"
      }
  }'

echo

echo
