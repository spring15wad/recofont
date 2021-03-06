Rails.application.routes.draw do

  root 'teams#landing', as: 'landing'

  get '/summary', to: 'recommendations#summary', as: 'summary'

  get '/change_teams', to: 'teams#change', as: 'pick_team'

  get '/attachments/new/:example_id', to: 'attachments#new',  as: 'attach_to_example'

  get '/attachments', to: redirect('/examples'), as: 'attachments'

  get '/examples/new/:recommendation_id', to: 'examples#new',  as: 'example_to_recommendation'

  resources :users

  resources :recommendations

  resources :examples

  resources :teams, except: :destroy

  resources :attachments, except: :index do
    member do
      get :serve
      get :download
    end
  end

  get '/auth/:provider', to: lambda{|env| [404, {}, ["Not Found"]]}, as: 'login'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: 'logout'

  #namespace :account do
  #  resources :ads, except: ['index', 'show']
  #end


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
