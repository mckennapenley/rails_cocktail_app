class Favorite < ApplicationRecord
  belongs_to :user, class_name: "User"
  belongs_to :cocktail, class_name: "Cocktail"
  validates :user_id, presence: true
  validates :cocktail_id, presence: true
end
