Rails.application.routes.draw do
  resources :categories
  devise_for :users
  resources :listings do
    resources :orders
    collection do
      get 'search'
    end

  end

  get 'pages/about'
  get 'pages/contact'

  get 'seller' => 'listings#seller'
  resources :users, except: [:new, :create]


  get 'sales' => 'orders#sales'
  get 'purchases' => 'orders#purchases'

  root 'listings#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
