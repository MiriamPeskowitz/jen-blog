Rails.application.routes.draw do
  # resources :categories
  # write custom routes about the defaults, because they are read first 

  # root "sessions#home"
  
  #signup
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  #login -- need two one to display, one to process
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  #logout -- use delete, acc to rails conventions, it's a post.delete rout
  # because we don't want anyone to see it in the url bar. 
  delete  '/logout' => 'sessions#destroy'

  resources :comments
  resources :users
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
