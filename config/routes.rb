Rails.application.routes.draw do
  devise_for :users
  resources :admins
  resources :cohorts
  resources :courses
  resources :teachers
  resources :students
  get 'welcome/index'
 
  root 'welcome#index'
end