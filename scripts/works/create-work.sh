#!/bin/bash

curl "http://localhost:4741/works" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "vehicle": {
      "vehicle_id": "'"${VEHICLE_ID}"'"
    },
    "work": {
        "name": "'"${NAME}"'",
        "mileage": "'"${MILEAGE}"'",
        "date": "'"${DATE}"'"
      }
  }'

echo
