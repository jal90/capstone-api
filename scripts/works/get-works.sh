#!/bin/bash

curl "http://localhost:4741/works" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
