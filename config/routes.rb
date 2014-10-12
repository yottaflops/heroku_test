Rails.application.routes.draw do
  root 'register_searches#index'

  # devise_for :users, :skip => [:sessions] do
  #   post 'users' => 'devise/registrations#create', :as => :create_user
  #   get 'users/new' => 'devise/registrations#new', :as => :new_user
  #   get 'users/edit' => 'devise/registrations#edit', :as => :edit_user
  # end

  # as :user do
  #   get 'login' => 'devise/sessions#new', :as => :login
  #   post 'login' => 'devise/sessions#create', :as => :create_session
  #   match 'logout' => 'devise/sessions#destroy', :as => :logout,
  #     :via => Devise.mappings[:user].sign_out_via
  # end

  devise_for :users, skip: [:sessions, :passwords, :confirmations, :registrations]
  as :person do
    # session handling
    get     '/login'  => 'devise/sessions#new'
    post    '/login'  => 'devise/sessions#create',  as: 'create_session'
    delete  '/logout' => 'devise/sessions#destroy'

    # joining
    get   '/signup' => 'devise/registrations#new'
    post  '/signup' => 'devise/registrations#create', as: 'create_user'

    scope '/account' do
      # password reset
      get   '/reset-password'        => 'devise/passwords#new',    as: 'new_password'
      put   '/reset-password'        => 'devise/passwords#update', as: 'update_password'
      post  '/reset-password'        => 'devise/passwords#create', as: 'create_password'
      get   '/reset-password/change' => 'devise/passwords#edit',   as: 'edit_password'

      # confirmation
      get   'confirm'        => 'devise/confirmations#show', as: 'confirm_user'
      post  '/confirm'        => 'devise/confirmations#create', as: 'create_confirmation'
      get   '/confirm/resend' => 'devise/confirmations#new',    as: 'resend_confirmation'

      # settings & cancellation
      get 'cancel'   => 'devise/registrations#cancel', as: 'cancel_user'
      get 'settings' => 'devise/registrations#edit', as: 'edit_user'
      put 'settings' => 'devise/registrations#update', as: 'update_user'

      # account deletion
      delete '' => 'devise/registrations#destroy'
    end
  end

  resources :register_searches, only: [:index]
  resources :documents, only: [:create]


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
