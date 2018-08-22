Rails.application.routes.draw do
  root 'rooms#home'
  resources :rooms
  resources :residents
end
