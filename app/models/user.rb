class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cocktails, dependent: :destroy

  has_many :favorites, dependent: :destroy
                      
  has_many :favorited_cocktails, :through => :favorites, :source => :cocktail

  def self.created_today
    where('created_at >= ?', Time.current.beginning_of_day)
  end

  # # favorite
  def add_favorite(cocktail)
    # favorites.create(cocktail_id ....)
    self.favorites.create(user_id: self.id, cocktail_id: cocktail.id, api_id: cocktail.api_id)
  end

  # # remove_favorite
  # def delete_favorite(favorite)
  #   self.favorites.delete(favorite)
  # end

# Returns true if the current user is following the other user.
  def favorited_api_cocktail?(cocktail_api_id)
    favorited_cocktails.find_by(api_id: cocktail_api_id).present?
  end

  def favorited?(cocktail_id)
    favorited_cocktails.find_by(id: cocktail_id).present?
  end
end

# The form is submitted to a controller action probably favorites create
# You have the cocktail api_id and user_id in the hideen fields...access through params in controller
# Use the api_id to find or create the record in Cocktails. First it will try to find the Cocktail record, if it doesn't exist then create it.
# Use the Cocktail record (your cocktail table, not api) to say user.favorite(cocktail), which will create the favorite record.
