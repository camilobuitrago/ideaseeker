class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text
      t.text :adjectives
      t.text :keywords
      t.integer :user_id

      t.timestamps
    end
  end
end
