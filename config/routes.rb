Rails.application.routes.draw do
  get 'bands/albums'

  get 'bands/tracks'

  resources :users, only: [:new, :create, :show]
  resource :session, only: [:new, :create, :destroy]
  resources :bands
  resources :albums
  resources :tracks
end
