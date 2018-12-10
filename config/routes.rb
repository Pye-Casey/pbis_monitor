Rails.application.routes.draw do

  get 'test/index'
  get     '/admin',           to: 'admin#index'

  get     '/behaviors',       to: 'behaviors#index'
  get     '/welcome',         to: 'welcome#index'
  get     '/login',           to: 'sessions#new'
  post    '/login',           to: 'sessions#create'
  delete  '/logout',          to: 'sessions#destroy'
  post    '/signup',          to: 'staffs#create'
  post    '/staffs/update',   to: 'staffs#update'
  post    '/students/create', to: 'students#create'
  post    '/students/update', to: 'sutdents#update'


  resources :parents
  resources :students
  resources :staffs
  resources :behaviors

  root 'welcome#index'
end
