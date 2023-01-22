Rails.application.routes.draw do
  resources :objetos do
    get '/page/:page', action: :index, on: :collection
  end
  resources :locadors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
