Rails.application.routes.draw do

  get 'test/index'
  get     '/admin',       to: 'admin#index'
  get     '/behavior',    to: 'bahavior#index'
  get     '/welcome',     to: 'welcome#index'
  get     '/login',       to: 'sessions#new'
  post    '/login',       to: 'sessions#create'
  delete  '/logout',      to: 'sessions#destroy'
  post    '/signup',      to: 'staffs#create'

  resources :parents
  resources :students
  resources :staffs
  resources :behaviors

  root 'sessions#new'
end
