Rails.application.routes.draw do

  root 'wards#index'

  resources :wards

end
