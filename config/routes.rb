Rails.application.routes.draw do
  resources :orders
  devise_for :users
  resources :listings do
    resources :orders, only: %i[new create]
  end

  get 'pages/about'
  get 'pages/contact'

  get 'seller' => 'listings#seller'
  get 'users' => 'users#index'


  get 'sales' => 'orders#sales'
  get 'purchases' => 'orders#purchases'

  root 'listings#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
