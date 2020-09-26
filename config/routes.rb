Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "omniauth" }

  resources :project_lists do
    resources :project_tasks do
      member do
        patch :done
      end
   end
  end

  root "project_lists#index" 
end
