Rails.application.routes.draw do
  resources 'scholarships'
  get 'admin/home'

  root 'admin#home'
end
