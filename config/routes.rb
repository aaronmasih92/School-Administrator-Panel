Rails.application.routes.draw do
  resources :cohorts_teachers
  resources :cohorts_students
devise_for :users, controllers: { registrations: "users/registrations"}

  resources :admins
  resources :cohorts
  resources :courses
  resources :teachers
  resources :students
  get 'welcome/index'
 
  root 'welcome#index'
end