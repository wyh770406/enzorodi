ActionController::Routing::Routes.draw do |map|
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.register '/register', :controller => 'users', :action => 'create'
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.resources :users

  map.resource :session
  map.resources :admin
  map.resources :products, :member => { :show_cat => :get }
  map.resources :middle_products
  map.resources :end_products, :member => { :display_photo => :get }
  map.resources :contacts
  map.resources :company_infos
  map.resources :company_histories
  map.resources :company_spirits
  map.resources :stick_teches
  map.resources :services
  map.resources :downloads
  map.resources :handlers
  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  map.root :controller => "home"
  map.namespace :adminpanel do |admin|
    admin.resources :top_products, :active_scaffold => true
    admin.resources :middle_products, :active_scaffold => true
    admin.resources :end_products, :active_scaffold => true

    admin.resources :contacts, :active_scaffold => true
    admin.resources :company_infos
    admin.resources :company_histories
    admin.resources :company_spirits
    admin.resources :stick_teches
    admin.resources :downloads
    admin.resources :areas, :active_scaffold => true
 #   admin.resources :cities, :active_scaffold => true
 #   admin.resources :handlers, :active_scaffold => true
  end
  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
