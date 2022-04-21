Rails.application.routes.draw do
  root to:'homes#top'

  get '/request_form' => 'homes#request_form'
  get '/request_complete' => 'homes#request_complete'
  resources :requests,only: [:new, :create]

  resources :orchestras,only: [:new,:create,:index]

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :members

end
