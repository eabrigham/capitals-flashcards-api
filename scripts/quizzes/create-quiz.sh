
#!/bin/bash

curl "http://localhost:4741/quizzes" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "quiz": {
      "state": "'"${STATE}"'",
      "prior_interval": "'"${PRIOR_INTERVAL}"'",
      "next_day_test": "'"${NEXT_DAY_TEST}"'",

      "card_id": "'"${CARD_ID}"'"
    }
  }'

echo
#      "user_id": "'"${USER_ID}"'",