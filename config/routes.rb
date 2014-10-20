Rails.application.routes.draw do
  resources :datasets

  resource :stylesheets

  resource :javascripts

  resource :licenses

  resource :associations

  resource :secions

  resource :uris

  resource :roles

  resource :collection_attributions

  resource :translations

  resource :traits

  resource :old_maps

  resource :maps

  resource :old_articles

  resource :articles

  resource :old_sounds

  resource :sounds

  resource :old_videos

  resource :videos

  resource :old_images

  resource :images

  resource :names

  resource :publications

  resource :appearances

  resource :literature_references

  resource :synths

  resource :nodes

  resource :links

  resource :partners

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example repartner route (maps HTTP verbs to controller actions automatically):
  #   resource :products

  # Example repartner route with options:
  #   resource :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example repartner route with sub-resource:
  #   resource :products do
  #     resource :comments, :sales
  #     repartner :seller
  #   end

  # Example repartner route with more complex sub-resource:
  #   resource :products do
  #     resource :comments
  #     resource :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example repartner route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resource :posts, concerns: :toggleable
  #   resource :photos, concerns: :toggleable

  # Example repartner route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resource :products
  #   end
end
