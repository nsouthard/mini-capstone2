Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'stamps#index'
  get '/stamps' => 'stamps#index'
  get '/stamps/new' => 'stamps#new'
  post '/stamps' => 'stamps#create'
  get '/stamps/:id' => 'stamps#show'
  get '/stamps/:id/edit' => 'stamps#edit'
  patch '/stamps/:id' => 'stamps#update'
  delete '/stamps/:id' => 'stamps#destroy'

  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'
end
