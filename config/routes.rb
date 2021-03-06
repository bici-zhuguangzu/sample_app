Rails.application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :microposts, only: [:create, :destroy]
  get 'static_pages/home'
  root 'static_pages#home'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/signup', to: 'users#new', via: 'get'
  match '/edit', to: 'users#edit', via: 'get'
  match '/signin',  to: 'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'
  match '/indes', to: 'users#index', via: 'get'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
