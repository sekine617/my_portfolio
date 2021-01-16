Rails.application.routes.draw do
  #get '/orders', to: 'orders#index'

  get 'orders/confirm', to: 'orders#confirm'
  #post 'orders/confirm', to: 'orders#confirm'
  get 'orders/complete', to: 'orders#complete'
  post 'orders/back', to: 'orders#back'
  #resources :orders, only: %i[index confirm complete back]

  resources :orders, only: [:new, :create, :show, :back] do
    collection do
      post :confirm
    end
  end

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

  resources :products do
    resources :reviews, only: %i[index create]
    post 'add', to:  'likes#create'
    delete '/add', to:  'likes#destroy'
  end
end
