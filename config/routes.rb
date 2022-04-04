Rails.application.routes.draw do
  root to:'homes#top'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :members
end
