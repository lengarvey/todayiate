class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.text :body
      t.references :user

      t.timestamps
    end
    add_index :meals, :user_id
  end
end
