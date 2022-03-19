Rails.application.routes.draw do
  resources :messages
  resources :rooms
  
  resources :chats do 
    resources :messages 
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "chats#index"
end
