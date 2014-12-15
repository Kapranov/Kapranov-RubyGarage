Rails.application.routes.draw do
  resources :tasks
  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:index]

  #get 'home/index'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  root to: "home#index"
end
