Rails.application.routes.draw do
  resources :admins
  resources :cohorts
  resources :courses
  resources :teachers
  resources :students
  get 'welcome/index'
 
  root 'welcome#index'
end