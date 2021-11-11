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

 def like_cocktail(cocktail)
  favorited_cocktails << cocktail
  end

  def unlike_cocktail(cocktail)
    favorited_cocktails.delete(cocktail)
  end

# Returns true if the current user is following the other user.
  def favorited?(cocktail)
    favorited_cocktails.include?(cocktail)
  end



end
