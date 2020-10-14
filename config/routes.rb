
Rails.application.routes.draw do
    resources :recipes
end

Rails.application.routes.draw do
  root to: 'ingredients#index'
  resources :ingredients
  
end