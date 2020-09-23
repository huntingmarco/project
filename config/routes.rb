Rails.application.routes.draw do
  resources :project_lists do
    resources :project_tasks
   end

  root "project_lists#index" 

end
