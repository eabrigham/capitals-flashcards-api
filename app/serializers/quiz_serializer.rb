class QuizSerializer < ActiveModel::Serializer
  attributes :id, :consecutive_correct
  # removed prior_interval, next_test_day, state
  # will not be used until next version
  has_one :user
  has_one :card
end
