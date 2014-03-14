WBSBuilder::Application.routes.draw do

# Homepage:
  get '/' => 'sessions#new'

# Session-related URLs
  get '/login' => 'sessions#new'
  get '/authenticate' => 'sessions#create'


# User-related URLs

  get "/users/new" => 'users#new'
  get "/users/create" => 'users#create'
  get "/users/:user_id/show" => 'users#show'



# Project-related URLs

  #CREATE
  get '/projects/new' => 'projects#new'
  get '/projects/create' => 'projects#create'

  # READ
  get '/projects' => 'projects#index'
  get '/projects/:project_id/show' => 'projects#show'

  #UPDATE
  get '/projects/:project_id/edit' => 'projects#edit'
  get '/projects/:project_id/update' => 'projects#update'

  #DELETE

  get 'projects/:project_id/delete' => 'projects#destroy'

# Task-related URLs

  get '/tasks/create' => 'tasks#create'



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
