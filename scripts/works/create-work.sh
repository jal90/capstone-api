#!/bin/bash

curl "http://localhost:4741/works" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "work": {
        "name": "'"${NAME}"'",
        "mileage": "'"${MILEAGE}"'",
        "date": "'"${DATE}"'",
        "price": "'"${PRICE}"'",
        "vehicle_id": "'"${VEHICLE_ID}"'"
      }
  }'

echo
