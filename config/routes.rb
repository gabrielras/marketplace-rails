Rails.application.routes.draw do
  get '/categories', to: 'categories#index'
  get '/profiles', to: 'profiles#index'
  get '/profiles/search', to: 'profiles#search'
  get '/profiles/:id', to: 'profiles#show'
  get '/orders', to: 'orders#create'
  get '/orders/:id', to: 'orders#show'
end
