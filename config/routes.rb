Rails.application.routes.draw do
  resources :enrolment_requests do
    post :approve, on: :member
    post :decline, on: :member
  end

  resources :enrolments
  resources :batches
  resources :courses
  resources :students
  resources :schools
  devise_for :users
  get 'home/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
end
