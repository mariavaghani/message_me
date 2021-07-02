Rails.application.routes.draw do
  root 'pages#home'
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  get 'chatroom', to: "chatroom#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
