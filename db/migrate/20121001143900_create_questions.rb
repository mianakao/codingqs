class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :qtext
      t.integer :difficulty
      t.integer :votes
      t.belongs_to :Category
      t.belongs_to :Language

      t.timestamps
    end
    add_index :questions, :Category_id
    add_index :questions, :Language_id
  end
end
