Rails.application.routes.draw do
  get '/', to: 'posts#index'
  get '/posts', to: 'posts#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'

  get '/posts/new', to: 'posts#new'
  get '/posts/:id', to: 'posts#show', as: 'post'
  get '/posts/:id/edit', to: 'posts#edit', as: 'edit_post'
  patch '/posts/:id', to: 'posts#update'
  post '/posts', to: 'posts#create'
  delete '/posts/:id', to: 'posts#destroy'
end
