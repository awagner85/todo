Rails.application.routes.draw do
  root to: 'lists#index'
  
  resources :lists do
    resources :todo_items, only: [:create]
  end
  
  resources :users, only: [:create]
  
  post 'todo_items/complete', to: 'todo_items#complete'
  
  get '/register', to: 'users#new'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  
end
