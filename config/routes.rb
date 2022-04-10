Rails.application.routes.draw do
  root to:'homes#top'
  resources :requests,only: [:new, :create]
  resources :orchestras,only: [:index]

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :members
end
