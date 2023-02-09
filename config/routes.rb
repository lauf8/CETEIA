Rails.application.routes.draw do
  resources :objeto_emprestimos
  resources :emprestimos
    get 'emprestimo/abertos', to:'emprestimos#abertos', as: "emprestimos_abertos"
    get 'emprestimo/fechados', to:'emprestimos#fechados', as: "emprestimos_fechados"
    get 'objeto/disponiveis', to:'objetos#disponiveis', as: "objeto_disponivel"
    get 'objeto/emprestados', to:'objetos#emprestados', as: "objeto_emprestado"
  resources :objetos do
    
    get '/page/:page', action: :index, on: :collection
    get 'objeto/emprestados/page/:page', action: :index, on: :collection
  end
  resources :locadors
  get '/relatorio/:id', to: 'emprestimos#pdf', as: 'relatorio'

  
  resources :schdele
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
