class CocktailsController < ApplicationController
  def search
    @cocktail = CocktailService.get_random_cocktail
  end

  def new
    render 'new'
  end

  def create
    cocktail = Cocktail.create!(
      name: params["name"], 
      image_url: params["image_url"], 
      measure1: params["measure1"], 
      ingredient1: params["ingredient1"], 
      measure2: params["measure2"], 
      ingredient2: params["ingredient2"],
      measure3: params["measure3"], 
      ingredient3: params["ingredient3"],
      instructions: params["instructions"],
      user_id: current_user.id
    )

    redirect_to cocktail_path(cocktail.id)
  end

  def search_by_name
    query = params[:name].downcase

    if query.present? 
      @user_sumbitted_cocktails = Cocktail.where("lower(name) LIKE ?", "%#{query}%").where.not(user_id:nil)
      @api_cocktails = CocktailService.get_cocktail_by_name(query)
      
      render 'show_search_results'
    else 
      redirect_to '/cocktails/search'
    end
  end

  def search_by_ingredient
    query = params[:ingredient]

    if query.present? 
      @user_sumbitted_cocktails = Cocktail.where("lower(ingredient1) LIKE :search OR lower(ingredient2) LIKE :search OR lower(ingredient3) LIKE :search",  :search => "%#{query}%").where.not(user_id:nil)
      @api_cocktails = CocktailService.get_cocktail_by_ingredient(query)
      
      render 'show_search_results'
    else
      redirect_to '/cocktails/search'
    end
  end

  def show
    @is_api_cocktail = params[:api_cocktail].present?

    if @is_api_cocktail
      @cocktail = CocktailService.get_cocktail_by_id(params[:id])
    else
      @cocktail = Cocktail.find(params[:id])
    end
    
    render 'show'
  end
end
