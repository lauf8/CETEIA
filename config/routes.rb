Rails.application.routes.draw do
  resources :objeto_emprestimos
  resources :emprestimos
  resources :objetos do
    get '/page/:page', action: :index, on: :collection
  end
  resources :locadors
  root "schedule#index"
  get "relatorio", to: "schedule#show"
  resources :schdele
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
