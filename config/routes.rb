Rails.application.routes.draw do
  get 'admin/home'

  root 'admin#home'
end
