Rails.application.routes.draw do
  get 'carts/show'
  root 'static_pages#home'
  get     '/home',        to: 'static_pages#home'
  get     '/index',       to: 'static_pages#index'
  get     '/products/detail/:id',    to: 'static_pages#show'
  devise_for :users
  resources :products   # only for Administrator
  resources :carts,       only: :show
  post    '/add_item',    to: 'carts#add_item'
  patch    '/update_item', to: 'carts#update_item'
  delete  '/delete_item', to: 'carts#delete_item'
end
