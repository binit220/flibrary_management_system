Rails.application.routes.draw do

  root "users#home"
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'dashboard', to: 'admin#dashboard', as: 'admin_dashboard'
  get 'index', to: 'admin#index', as: 'admin_index'

  resources :users do
    get 'dashboard', on: :collection
  end
  resources :sessions
  resources :books
  resources :members
  resources :book_issues
end

