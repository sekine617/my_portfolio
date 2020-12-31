Rails.application.routes.draw do
  devise_for :users
  get '/mypage' => 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  #resources :users, only: %i[new create]
  resources :shops
  resources :products do
    resources :reviews, only: %i[index create]
    post 'add' => 'likes#create'
    delete '/add' => 'likes#destroy'
  end

  
  
end
