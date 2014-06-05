Rails.application.routes.draw do
  devise_for :users

  root 'interactions#index'

  get('/my_companies', { :controller => 'companies', :action => 'my_companies' })

  # Routes for the Contact resource:
  # CREATE
  get('/contacts/new', { :controller => 'contacts', :action => 'new' })
  get('/create_contact', { :controller => 'contacts', :action => 'create' })

  # READ
  get('/contacts', { :controller => 'contacts', :action => 'index' })
  get('/contacts/:id', { :controller => 'contacts', :action => 'show' })

  # UPDATE
  get('/contacts/:id/edit', { :controller => 'contacts', :action => 'edit' })
  get('/update_contact/:id', { :controller => 'contacts', :action => 'update' })

  # DELETE
  get('/delete_contact/:id', { :controller => 'contacts', :action => 'destroy' })
  #------------------------------

  # Routes for the Interaction resource:
  # CREATE
  get('/interactions/new', { :controller => 'interactions', :action => 'new' })
  get('/create_interaction', { :controller => 'interactions', :action => 'create' })

  # READ
  get('/interactions', { :controller => 'interactions', :action => 'index' })
  get('/interactions/:id', { :controller => 'interactions', :action => 'show' })

  # UPDATE
  get('/interactions/:id/edit', { :controller => 'interactions', :action => 'edit' })
  get('/update_interaction/:id', { :controller => 'interactions', :action => 'update' })

  # DELETE
  get('/delete_interaction/:id', { :controller => 'interactions', :action => 'destroy' })
  #------------------------------

  # Routes for the Company resource:
  # CREATE
  get('/companies/new', { :controller => 'companies', :action => 'new' })
  get('/create_company', { :controller => 'companies', :action => 'create' })

  # READ
  get('/companies', { :controller => 'companies', :action => 'index' })
  get('/companies/:id', { :controller => 'companies', :action => 'show' })

  # UPDATE
  get('/companies/:id/edit', { :controller => 'companies', :action => 'edit' })
  get('/update_company/:id', { :controller => 'companies', :action => 'update' })

  # DELETE
  get('/delete_company/:id', { :controller => 'companies', :action => 'destroy' })
  #------------------------------

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
