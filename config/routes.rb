Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "omniauth" }

  #was add for user login test
  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
  end

  resources :project_lists do
    resources :project_tasks do
      member do
        patch :done
      end
   end
  end
  
  #was add for user login test
  resources :user_session

  root "project_lists#index" 
end
