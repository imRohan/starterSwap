class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :email
      t.string :location
      t.string :name
      t.string :starterName
      t.string :starterAge
      t.text :body

      t.timestamps null: false
    end
  end
end
