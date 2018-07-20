class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :genre
      t.string :side_a
      t.string :side_b

      t.timestamps
    end
  end
end
