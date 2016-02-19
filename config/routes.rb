Authentication::Application.routes.draw do
  
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"

  root :to => "home#index"

  resources :sessions
  resources :password_resets

  
    #get 'channel' => 'channels#index'
 #   resources :posts
    #get 'posts' => 'posts#index'
  
  resources :users
    resources :channels
          resources :posts

end
