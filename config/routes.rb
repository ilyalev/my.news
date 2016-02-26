Authentication::Application.routes.draw do
  
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"

  root :to => "home#index"

  resources :sessions
  resources :password_resets
 
  resources :users
    resources :channels do
          resources :posts
  end

end
