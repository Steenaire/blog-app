Rails.application.routes.draw do
  get '/', to: 'posts#index'
  
  get '/login', to: 'sessions#new'
  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'
end
