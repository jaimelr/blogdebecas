Rails.application.routes.draw do
  resources :notices
  resources :categories
  resources 'scholarships'
  resources :requirements

  get 'admin/home'

  root 'admin#home'
end
