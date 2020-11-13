Rails.application.routes.draw do
  resources :categories
  resources 'scholarships'
  resources :requirements

  get 'admin/home'

  root 'admin#home'
end
