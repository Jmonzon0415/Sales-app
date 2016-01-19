Rails.application.routes.draw do

  #showing products 
  get '/' => 'products#index'
  get '/index' => 'products#index'
  
  
  #making new products
  get '/index/new' => 'products#new'
  post '/index' => 'products#create'
  get '/index/:id' => 'products#show'

  #editing product
  get '/index/:id/edit' => 'products#edit'
  patch '/index/:id'=> 'products#update'

  #destroying product
  delete 'index/:id' => 'products#destroy'

 
end
