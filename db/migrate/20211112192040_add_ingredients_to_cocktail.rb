class AddIngredientsToCocktail < ActiveRecord::Migration[6.1]
  def change
    add_column :cocktails, :measure1, :string
    add_column :cocktails, :ingredient1, :string
    add_column :cocktails, :measure2, :string
    add_column :cocktails, :ingredient2, :string
    add_column :cocktails, :instructions, :text
  end
end
