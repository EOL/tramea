Rails.application.routes.draw do
  repartners :stylesheets

  repartners :javascripts

  repartners :licenses

  repartners :associations

  repartners :secions

  repartners :uris

  repartners :roles

  repartners :collection_attributions

  repartners :translations

  repartners :traits

  repartners :old_maps

  repartners :maps

  repartners :old_articles

  repartners :articles

  repartners :old_sounds

  repartners :sounds

  repartners :old_videos

  repartners :videos

  repartners :old_images

  repartners :images

  repartners :names

  repartners :publications

  repartners :appearances

  repartners :literature_references

  repartners :synths

  repartners :nodes

  repartners :links

  repartners :partners

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example repartner route (maps HTTP verbs to controller actions automatically):
  #   repartners :products

  # Example repartner route with options:
  #   repartners :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example repartner route with sub-repartners:
  #   repartners :products do
  #     repartners :comments, :sales
  #     repartner :seller
  #   end

  # Example repartner route with more complex sub-repartners:
  #   repartners :products do
  #     repartners :comments
  #     repartners :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example repartner route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   repartners :posts, concerns: :toggleable
  #   repartners :photos, concerns: :toggleable

  # Example repartner route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     repartners :products
  #   end
end
