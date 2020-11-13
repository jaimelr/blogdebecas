Rails.application.routes.draw do
  resources :categories
  resources 'scholarships'
  get 'admin/home'

  root 'admin#home'
end
