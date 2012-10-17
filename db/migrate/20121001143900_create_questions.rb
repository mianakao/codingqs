class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :qtext
      t.integer :difficulty
      t.integer :votes
      t.belongs_to :category
      t.belongs_to :language

      t.timestamps
    end
    add_index :questions, :category_id
    add_index :questions, :language_id
  end
end
