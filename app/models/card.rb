class Card < ApplicationRecord
    has_many :quizzes
    has_many :users, through: :quizzes
end
