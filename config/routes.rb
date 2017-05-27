Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/products' => 'products#index'
  get '/products/new' => 'products#new'
  post '/products' => 'products#create'
  get '/products/:id' => 'products#show'
  get '/products/:id/edit' => 'products#edit'
  patch '/products/:id' => 'products#update'
  delete '/products/:id' => 'products#destroy'

  get '/products/:product_id/images/new' => 'images#new'
  post '/products/:product_id/images' => 'images#create'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/carted_products' => 'carted_products#index'
  post '/carted_products' => 'carted_products#create'

  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'

  delete '/carted_products/:id' => 'carted_products#destroy'

end
