Rails.application.routes.draw do
  get 'mypage', to: 'users#me'
  get  'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'shop_mypage', to: 'shops#shop_me'
  get  'shop_login', to: 'sessions#shop_new'
  post 'shop_login', to: 'sessions#shop_create'
  delete 'shop_logout', to: 'sessions#shop_destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  resources :users, only: %i[new create]
  resources :shops
  resources :products do
    resources :reviews, only: %i[index create]
    post 'add' => 'likes#create'
    delete '/add' => 'likes#destroy'
  end

  
  
end
