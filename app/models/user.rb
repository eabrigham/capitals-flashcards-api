# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :quizzes
  has_many :cards, through: :quizzes

  after_create :setup_quizzes, on: :create
  
  private
    def setup_quizzes
      Card.all.each do |card|
        puts 'in setup_quizzes and running card '
        puts card
        self.quizzes.build(
          :card_id => card.id,
          :consecutive_correct => 0
        )
        self.save
      end
    end

end