class CocktailsController < ApplicationController
  def search
    @cocktail = CocktailService.get_random_cocktail
  end

  def new
    render 'new'
  end

  def create
    Cocktail.create(name:params[:name], image_url:params[:image_url])
  end

  def search_by_name
    if !params["name"].empty? 
      @cocktails = CocktailService.get_cocktail_by_name(params["name"])
      render 'show_search_results'
    else 
      redirect_to '/cocktails/search'
    end
  end

  def search_by_ingredient
   if !params["ingredient"].empty? 
    @cocktails = CocktailService.get_cocktail_by_ingredient(params["ingredient"])
    render 'show_search_results'
   else
    redirect_to '/cocktails/search'
   end
  end

  def show
    @cocktail = CocktailService.get_cocktail_by_id(params[:id])
    render 'show'
  end
end
