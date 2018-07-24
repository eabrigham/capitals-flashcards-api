curl "http://localhost:4741/quizzes/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "quiz": {
      "consecutive_correct": "'"${CORRECT}"'"
    }
  }'

echo