class AddConsecutiveCorrectToQuizzes < ActiveRecord::Migration[5.1]
  def change
    add_column :quizzes, :consecutive_correct, :integer
  end
end
