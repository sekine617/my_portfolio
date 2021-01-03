Rails.application.routes.draw do
  devise_for :users
  get '/mypage' => 'users#show'

  get     'shops/login',   to: 'sessions#new'
  post    'shops/login',   to: 'sessions#create'
  delete  'shops/logout',  to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  # resources :users, only: %i[new create]
  #resources :tags
  resources :products do
    resources :reviews, only: %i[index create]
    post 'add' => 'likes#create'
    delete '/add' => 'likes#destroy'
  end
end
