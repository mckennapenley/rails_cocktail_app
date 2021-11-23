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

 
  def add_favorite(cocktail)

    self.favorites.create(user_id: self.id, cocktail_id: cocktail.id, api_id: cocktail.api_id)
  end


  def favorited_api_cocktail?(cocktail_api_id)
    favorited_cocktails.find_by(api_id: cocktail_api_id).present?
  end

  def favorited?(cocktail_id)
    favorited_cocktails.find_by(id: cocktail_id).present?
  end
end

