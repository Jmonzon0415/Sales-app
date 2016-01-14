Rails.application.routes.draw do
  get '/singleproduct' => 'products#single'
  get '/allproducts' => 'products#all'
end
