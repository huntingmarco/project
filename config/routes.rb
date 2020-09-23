Rails.application.routes.draw do
  resources :project_lists do
    resources :project_tasks do
      member do
        patch :done
      end
   end
  end

  root "project_lists#index" 

end
