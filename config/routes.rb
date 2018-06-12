Rails.application.routes.draw do
  resources :cohorts_teachers
  resources :cohorts_students
devise_for :users, controllers: { registrations: "users/registrations"}

  resources :cohorts
  resources :courses
  resources :teachers
  resources :students
    
   
post "/cohorts/:id/edit", to: "cohorts_students#create"    
  root "welcome#index"
end