class QuizSerializer < ActiveModel::Serializer
  attributes :id, :state, :prior_interval, :next_test_day
  has_one :user
  has_one :card
end
