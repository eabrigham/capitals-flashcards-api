# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :quizzes
  has_many :cards, through: :quizzes
end
