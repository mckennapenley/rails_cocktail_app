class CocktailsController < ApplicationController
  def index
    @cocktail = CocktailService.get_random_cocktail
  end

    def search_by_name
    @cocktails = CocktailService.get_cocktail_by_name(params["name"])
    render 'show_search_results'
  end

  def search_by_liquor
    @cocktails = CocktailService.get_cocktail_by_liqour(params["liquor"])
    render 'show_search_results'
  end


  def show
    @cocktail = CocktailService.get_cocktail_by_id(params[:id])
        render 'show'
  end


end
