Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'sessions#welcome', as: 'welcome'
  get '/users/new' => 'sessions#new', as: 'signup'
  post '/signup' => 'sessions#create'
  post '/signout' => 'sessions#destroy'

  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]
  resources :users, only: [:show, :new, :create]
  resources :appearances, only: [:create]
end
