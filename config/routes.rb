Rails.application.routes.draw do
  get 'admin/index'
  get 'login/index'
  get 'behavior/index'
  get 'welcome/index'
  
  resources :parents
  resources :students
  resources :staffs
  resources :behaviors

  root 'welcome#index'
end
