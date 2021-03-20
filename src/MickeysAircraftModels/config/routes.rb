Rails.application.routes.draw do
  # resources :user_profiles
  resources :products
  devise_for :users

  root to: 'home#page'
  
  get "/user_profiles", to: "user_profiles#index"
	get "/user_profiles/new", to: "user_profiles#new", as: "new_user_profile"
	get "/user_profiles/:user_id", to: "user_profiles#show", as: "user_profile"
	get "/user_profiles/:user_id/edit", to: "user_profiles#edit", as: "edit_user_profile"
	patch "/user_profiles/:id", to: "user_profiles#update"
	delete "/user_profiles/:id", to: "user_profiles#destroy", as: "destroy_user_profile"
	post "/user_profiles", to: "user_profiles#create"

  get "/products", to: "product#show", as: "show_product"
  get "/products/:user_id", to: "product#only_user_product", as: "only_user_product"

  get "orders/new/:product_id", to: "orders#new", as: "new_order"
  get "order/success", to: "orders#success", as: "order_success"
  get "order/cancel", to: "orders#cancel", as: "order_cancel"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end