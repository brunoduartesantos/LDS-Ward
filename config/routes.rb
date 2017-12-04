Rails.application.routes.draw do

  resources :histories
  root 'wards#index'

  resources :wards

end
