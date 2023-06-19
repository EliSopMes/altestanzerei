Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'pages#home'

  get 'requests/new', to: 'requests#new'
  post 'requests/create', to: 'requests#create'

  resources :flats do
    resources :requests, only: %i[new create]
  end

  get 'pages/impressum', to: 'pages#impressum', as: 'impressum'
  get 'pages/agbs', to: 'pages#agbs', as: 'agbs'
end
