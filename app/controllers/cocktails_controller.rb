class CocktailsController < ApplicationController
  def search
    @cocktail = CocktailService.get_random_cocktail
  end

  def new
    render 'new'
  end

  def create
    Cocktail.create(name:params["name"], image_url:params["image_url"], 
    measure1:params["measure1"], ingredient1:params["ingredient1"], 
    measure2:params["measure2"], ingredient2:params["ingredient2"],
    measure3:params["measure3"], ingredient3:params["ingredient3"],
    instructions:params["instructions"])
  end

  def search_by_name
    if !params["name"].empty? 
      @api_cocktails = CocktailService.get_cocktail_by_name(params["name"])
      render 'show_search_results'
    else 
      redirect_to '/cocktails/search'
    end
  end

  def search_by_ingredient
   if !params["ingredient"].empty? 
    @api_cocktails = CocktailService.get_cocktail_by_ingredient(params["ingredient"])
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
