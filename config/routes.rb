Rails.application.routes.draw do
  devise_for :users
  get '/mypage' => 'users#show'
  get     'mypage/like',   to: 'users#like'
  get     'mypage/review',   to: 'users#review'
  get     'mypage/order_history',   to: 'users#order_history'


  get     'shops/login',   to: 'sessions#new'
  post    'shops/login',   to: 'sessions#create'
  delete  'shops/logout',  to: 'sessions#destroy'

 
  get '/carts', to: 'carts#show'
  post '/add_item', to:  'carts#add_item'
  post '/update_item', to:  'carts#update_item'
  delete '/delete_item', to:  'carts#delete_item'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  # resources :users, only: %i[new create]
  #resources :tags
  resources :products do
    resources :reviews, only: %i[index create]
    post 'add', to:  'likes#create'
    delete '/add', to:  'likes#destroy'
  end
end
