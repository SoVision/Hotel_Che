Rails.application.routes.draw do
root 'employees#index'
  resources :clients
  resources :employees
  resources :rooms
  resources :orders
end
