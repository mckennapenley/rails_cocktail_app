Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :cocktails  do
    collection do
      get 'search_by_liquor', 'search_by_name'
    end
  end
  

end
