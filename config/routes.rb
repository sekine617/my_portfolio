Rails.application.routes.draw do
  get 'mypage', to: 'users#me'
  get  'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  resources :users, only: %i[new create]
  resources :products do
    resources :reviews, only: %i[index create]
    #resources :likes, only: %i[create destroy]
    post "likes/create" => "likes#create"
    delete "likes/destroy" => "likes#destroy"
  end
  
  
end
