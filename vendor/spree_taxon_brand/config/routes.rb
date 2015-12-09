Rails.application.routes.draw do
  Spree::Core::Engine.add_routes do
    namespace :admin do
      resources :taxonomies do
        member do
          post :toggle_brand
        end
      end
    end
  end
end