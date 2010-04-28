Money::Application.routes.draw do |map|
  #resources :users

  #get "home/index"

  match ':user_id'             , :to => 'users#show'   , :as => 'user'
  match ':user_id/edit'        , :to => 'users#edit'   , :as => 'edit_user'
  match ':user_id/update'      , :to => 'users#update' , :as => 'update_user'
  match ':user_id/project/'            , :to => 'projects#index'  , :as => 'index_project'
  match ':user_id/project/new'         , :to => 'projects#new'    , :as => 'new_project'
  match ':user_id/project/create'      , :to => 'projects#create' , :as => 'create_project'
  match ':user_id/project/:project_id' , :to => 'projects#show'   , :as => 'show_project'
  match ':user_id/project/:project_id/order/new'    , :to => 'orders#new'     , :as => 'new_order'
  match ':user_id/project/:project_id/order/create' , :to => 'orders#create'  , :as => 'create_order'
  match ':user_id/project/:project_id/order/ok'     , :to => 'orders#ok'      , :as => 'ok_order'



  #match ':user_id/show'  , :to => 'users#show'

  root :to => "home#index"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get :short
  #       post :toggle
  #     end
  #
  #     collection do
  #       get :sold
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get :recent, :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
