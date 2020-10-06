Rails.application.routes.draw do

  root 'estates#index'

  resources :estates
end
