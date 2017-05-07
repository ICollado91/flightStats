Rails.application.routes.draw do
  
  resources :flights do
    collection { post :import }
  end
  
  get 'flights/index'

  get 'flights/import'
  
  root to: "flights#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
