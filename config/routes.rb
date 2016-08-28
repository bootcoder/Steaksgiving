Rails.application.routes.draw do

  resources :steak_nights
  resources :users

  root 'steak_nights#index'

end
