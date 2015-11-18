class CreateQuestions < ActiveRecord::Migration
  def change
  	drop_table :questions
    create_table :questions do |t|
      t.string :email
      t.string :location
      t.string :name
      t.text :body

      t.timestamps null: false
    end
  end
end
