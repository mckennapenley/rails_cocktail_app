class FavoritesController < ApplicationController

  def index
    if current_user
     @favorited_cocktails = current_user.favorited_cocktails 
    else 
     render "sessions/new"
    end
  end

  def create
    cocktail = Cocktail.find_or_create_by(api_id: params[:api_id], name: params[:name], image_url: params[:image_url] )
    current_user.add_favorite(cocktail)
  end

  def destroy
    cocktail = Favorite.find_by(id: params[:id])
    cocktail.delete
  end
end


