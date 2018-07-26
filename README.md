
The API for an app to store flashcards built in Ruby on Rails.

See the client at: https://github.com/eabrigham/capitals-flashcards-client/

Tables:
User: email (string), password (string)
Quiz: consecutive_correct (integer)
    [not provided through serializer:
    state(string), prior_interval(integer), next_test_day(date)]
Card: genre (string), side_a (string), side_b (string)

[Imgur](https://i.imgur.com/db11hQw.jpg?1)

Users have many quizzes, and cards have many quizzes.
When a new user signs up, a quiz for every card is created for that user account. The database seeds cards with every european city and its capital. There are no routes to interact directly with the cards.

A future version of this API may have seed data for all world capitals, routes to interact with the cards, and serializer access
to the additional Quiz attributes. This would allow support of 
timed interval flashcards as well as flashcards of world capitals or other content.
