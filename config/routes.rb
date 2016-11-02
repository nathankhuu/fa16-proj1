Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  patch 'capture' => 'pokemons#capture', as: 'capture'
  patch 'damage' => 'pokemons#damage', as: 'damage'
  get '/pokemons/new', to: 'pokemons#new'
  post '/pokemons/create', to: 'pokemons#create'
  patch 'new' => 'pokemons#new', as: 'new'
end
