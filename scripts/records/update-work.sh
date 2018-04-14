#!/bin/bash

curl "http://localhost:4741/works/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "work": {
        "name": "'"${NAME}"'",
        "mileage": "'"${MILEAGE}"'",
        "date": "'"${DATE}"'"
      }
  }'

echo
