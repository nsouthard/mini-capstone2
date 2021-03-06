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

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/carted_products' => 'carted_products#index'
  post '/carted_products' => 'carted_products#create'
  delete '/carted_products' => 'carted_products#destroy'

  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'

end
