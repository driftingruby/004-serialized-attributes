Rails.application.routes.draw do
  resources :users
  root to: 'visitors#index'
end
