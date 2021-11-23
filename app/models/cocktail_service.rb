class CocktailService
  def self.get_random_cocktail
    cocktails = HTTParty.get("http://www.thecocktaildb.com/api/json/v1/1/random.php", :headers =>{'Content-Type' => 'application/json'} )["drinks"]

    cocktails.first
  end

 def self.get_cocktail_by_id(search_term)
     cocktail = HTTParty.get("https://www.thecocktaildb.com/api/json/v1/1/lookup.php?i=#{search_term}", :headers =>{'Content-Type' => 'application/json'} )["drinks"]

     cocktail.first
  end 

  def self.get_cocktail_by_name(search_term)
    cocktails = HTTParty.get("http://www.thecocktaildb.com/api/json/v1/1/search.php?s=#{search_term}", :headers =>{'Content-Type' => 'application/json'} )["drinks"]

    cocktails
  end

  def self.get_cocktail_by_ingredient(search_term)
    cocktails = HTTParty.get("http://www.thecocktaildb.com/api/json/v1/1/filter.php?i=#{search_term}", :headers =>{'Content-Type' => 'application/json'} )["drinks"]

    cocktails
  end
end
