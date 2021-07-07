Rails.application.routes.draw do
  root 'pages#home'
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  get 'chatroom', to: "chatroom#index"
  get "signup", to: 'users#new'
  resources :users, except: [:new]
  post "message", to: "messages#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
