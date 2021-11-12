class AddIngredientsToCocktail < ActiveRecord::Migration[6.1]
  def change
    add_column :cocktails, :measure1, :string
    add_column :cocktails, :ingredient1, :string
    add_column :cocktails, :measure2, :string
    add_column :cocktails, :ingredient2, :string
     add_column :cocktails, :measure3, :string
    add_column :cocktails, :ingredient3, :string
     add_column :cocktails, :measure4, :string
    add_column :cocktails, :ingredient4, :string
     add_column :cocktails, :measure5, :string
    add_column :cocktails, :ingredient5, :string
     add_column :cocktails, :measure6, :string
    add_column :cocktails, :ingredient6, :string
     add_column :cocktails, :measure7, :string
    add_column :cocktails, :ingredient7, :string
     add_column :cocktails, :measure8, :string
    add_column :cocktails, :ingredient8, :string
     add_column :cocktails, :measure9, :string
    add_column :cocktails, :ingredient9, :string
     add_column :cocktails, :measure10, :string
    add_column :cocktails, :ingredient10, :string
     add_column :cocktails, :measure11, :string
    add_column :cocktails, :ingredient11, :string
     add_column :cocktails, :measure12, :string
    add_column :cocktails, :ingredient12, :string
     add_column :cocktails, :measure13, :string
    add_column :cocktails, :ingredient13, :string
     add_column :cocktails, :measure14, :string
    add_column :cocktails, :ingredient14, :string
     add_column :cocktails, :measure15, :string
    add_column :cocktails, :ingredient15, :string
    add_column :cocktails, :instructions, :text
  end
end
