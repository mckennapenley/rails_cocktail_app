class FavoritesController < ApplicationController

  def index
    if current_user
     @favorited_cocktails = current_user.favorited_cocktails 
    else 
     render "sessions/new"
    end
  end

  def create
    cocktail = api_cocktail? ? find_or_create_api_cocktail : find_user_submitted_cocktail
      
    current_user.add_favorite(cocktail)
    render status: 200
  end

  def destroy
    cocktail = Favorite.find_by(id: params[:id])
    cocktail.delete

    render status: 200
  end

  private

  def api_cocktail?
    params[:api_id].present?
  end

  def find_or_create_api_cocktail
    Cocktail.find_or_create_by(api_id: params[:api_id], name: params[:name], image_url: params[:image_url] )
  end

  def find_user_submitted_cocktail
    Cocktail.find(params[:cocktail_id])
  end
end



