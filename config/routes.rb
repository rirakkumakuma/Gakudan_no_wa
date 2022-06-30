Rails.application.routes.draw do

  root to:'homes#top'
  get '/about' => 'homes#about'
  get '/members/my_page' => 'members#show'
  get '/members/edit_page' =>'members#edit'
  patch 'members/update'
  put '/members/update'

  resources :orchestra_managers, only: [:update]

  resources :orchestras,only: [:new, :create, :show] do

    resources :members, only: [:index] do
      # member do
        # delete :retire
        # patch :rest
        # get :return
      end
    resources :instruments,except: [:new] do
      member do
        get :join
        delete :disjoin
      end
    end

    resources :training_days,except: [:new] do
      member do
        get :join
        delete :disjoin
      end
    end
  end
  get '/request_complete' => 'orchestras#complete'


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :members, controllers: {
  registrations: "members/registrations",
  sessions: 'members/sessions',
  invitations: 'members/invitations',
  }

end
