class CreateCocktails < ActiveRecord::Migration[6.1]
  def change
    create_table :cocktails do |t|
      t.integer :api_id
      t.string :image_url
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
