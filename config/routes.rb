SoloApp1::Application.routes.draw do

  get "shop/index"
  root  'main_pages#home'
  match '/movie_listing', to: 'movie_pages#movie_listing', via: 'get'
  match '/contact', to: 'main_pages#contact', via: 'get'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/addmovie', to: 'movies#new', via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/users' , to: 'users#index', via: 'get'
  match '/products' , to: 'products#index', via: 'get'
  #match '/shop/add_to_cart/:product_id', to: 'shop#add_to_cart#product_id', via: 'get', as: 'add_to_cart'
  match '/shop/add_to_cart', to: 'shop#add_to_cart', via: 'get'
  match '/shop', to: 'shop#index', via:'get'
  match '/clear_cart', to: 'shop#clear_cart', via: 'get'


  resources :users
  resources :movies
  resources :products
  resources :carts
  resources :sessions, only: [:new, :create, :destroy]

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
