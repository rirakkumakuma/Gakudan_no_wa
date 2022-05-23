Rails.application.routes.draw do

  root to:'homes#top'

   get '/members/my_page' => 'members#show'
   get '/members/edit_page' =>'members#edit'
   patch '/members/update'
   put '/members/update'

  resources :orchestras,only: [:new, :create, :index, :show]
   get '/request_complete' => 'orchestras#complete'

  resources :instruments,except: [:new]


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :members, controllers: {
  registrations: "members/registrations",
  sessions: 'members/sessions',
  invitations: 'members/invitations',
}

end
