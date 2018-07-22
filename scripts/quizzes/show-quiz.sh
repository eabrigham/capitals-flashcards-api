#!/bin/bash

curl "http://localhost:4741/quizzes/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo