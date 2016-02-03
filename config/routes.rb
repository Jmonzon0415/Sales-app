Rails.application.routes.draw do
  
  devise_for :users
  root 'products#index'
  
  #showing products 
  get '/index' => 'products#index'

  #showing suppliers
  get '/suppliers/index' => 'suppliers#index'

  #showingcartedproducts and showing cart
  post '/cart' => 'carted_products#create'
  get '/cart' => 'carted_products#index'
  
  #making new products
  get '/index/new' => 'products#new'
  post '/index' => 'products#create'
  get '/index/:id' => 'products#show'

  #creating orders
  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'

  #making new suppliers
  get '/suppliers/index/new' => 'suppliers#new'
  post '/suppliers/index' => 'suppliers#create'


  #editing product
  get '/index/:id/edit' => 'products#edit'
  patch '/index/:id'=> 'products#update'

  #editing suppliers 
  get '/suppliers/indes/edit' => 'suppliers#edit'
  patch '/suppliers/index/:id' => 'suppliers#:id'
  

  #destroying product
  delete 'index/:id' => 'products#destroy'

  post '/search' => 'products#search' 
  

 
end
