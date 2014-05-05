Rails.application.routes.draw do
  #resources :users

  resources :working_days

  resources :expenses

  resources :payments

  resources :name_expenses

  resources :providers
  
  get 'last_payments/:limit(.:format)' => 'payments#last_payments'
  
  get 'active_payments' => 'payments#active_payments'
  
  get 'payments_by_provider/:provider(.:format)' => 'payments#by_provider'
  get 'expenses_by_name/:name(.:format)' => 'expenses#by_name'
  get 'working_days_by_date/:day_date(.:format)' => 'working_days#by_date'
  
  get 'payments_by_day/:day(.:format)' => 'payments#by_day'
  get 'expenses_by_day/:day(.:format)' => 'expenses#by_day'
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
