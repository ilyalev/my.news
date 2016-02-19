Authentication::Application.routes.draw do
  resources :posts


  resources :channels


  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  root :to => "home#index"
  resources :users
  resources :sessions
  resources :password_resets

  resources :channels do
    get 'channel' => 'channels#index'
end
end
