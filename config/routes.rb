Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'articles#index'

  devise_for :users
  resources :users, only: [:index, :show, :new]
  post 'create_user', to: 'users#create', as: 'create_user'
  resources :articles

end
