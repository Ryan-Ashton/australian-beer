Rails.application.routes.draw do
  
  root 'beers#index'

  resources :beers, only: [:new, :create, :show] do
    resources :numberofperson only: [:new, :create]


end
