Rails.application.routes.draw do
  resources :carts
	 root "products#index"
  devise_for :users
  resources :categories
  resources :products do
  	get "/add_to_cart", to: "products#add_to_cart"

  end
  resources :cart_items do
  	get "/remove", to: "cart_items#destroy"
  end
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
