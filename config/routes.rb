
Rails.application.routes.draw do
    resources :recipes do 
      resources :ingredients 
    end
end

Rails.application.routes.draw do
  root to: 'ingredients#index'
  resources :ingredients do 
    resources :recipes
  end
end