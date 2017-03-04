Rails.application.routes.draw do



  get 'userfuns/index'

  get 'userfuns/new'

  get 'userfuns/create'

  get 'userfuns/show'

  get 'user_functions/new'

  get 'user_functions/create'

  get 'user_functions/show'

  get 'rozliczenies/index'

  get 'rozliczenies/new'

  get 'rozliczenies/show'

  get 'rozliczenies/create'

  get 'roliczenies/index'

  get 'roliczenies/create'

  get 'roliczenies/show'

  get 'roliczenies/new'

  get 'fakturas/index'

  get 'fakturas/new'

  get 'fakturas/show'

  get 'fakturas/create'

  get 'fakturas/index'

  get 'fakturas/new'

  get 'fakturas/show'

  get 'fakturas/create'

  get 'kupnos/index'

  get 'kupnos/new'

  get 'kupnos/show'

  get 'kupnos/create'

  get 'produkts/index'

  get 'produkts/new'

  get 'produkts/show'

  get 'produkts/create'

  get 'firmas/index'

  get 'firmas/show'

  get 'firmas/new'

  get 'firmas/create'

  get 'dostawcas/create'

  get 'dostawcas/index'

  get 'dostawcas/new'

  get 'dostawcas/show'

  get 'towars/index'

  get 'towars/show'

  get 'towars/new'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'functions/new'

  get 'functions/show'

  get 'functions/edit'

  get 'posts/create'

  get 'posts/new'

  get 'posts/show'

  get 'post/new'

  get 'post/create'

  get 'post/show'


    
  get '/index',  to: 'users#index'

  get '/show',  to: 'users#show'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'


  get 'users/edit'

  get 'users/delete'

  get 'test/zaloguj'

  root 'sessions#new'
  get 'test/index'


  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'

  resources :users
  resources :posts
  resources :fakturas
  resources :functions
  resources :firmas
  resources :produkts
  resources :kupnos
  resources :rozliczenies
  resources :userfuns


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
