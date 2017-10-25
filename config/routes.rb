Rails.application.routes.draw do

  get '' => 'home#index'
  get 'home' => 'home#index'
  get 'register' => 'users#new'
  get 'login' => 'session#new'
  post    "login"    => "session#create"
  delete  "logout"   => "session#destroy"
  get 'messages' => "messages#show"

  get 'profile' => "users#index"

  get 'friends' => "friends#friend"


  resources :users
  resources :messages
  resources :friends


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
