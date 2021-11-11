Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :cocktails  do
    collection do
      get 'search', 'search_by_ingredient', 'search_by_name'
    end
  end
  resources :favorites, only: [:create, :destroy]

end
