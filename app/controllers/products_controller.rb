class ProductsController < ApplicationController
  

  def show
   @sp = Product.find_by(id: params[:id])
 end
  
  def index 
    @ap = Product.all
  end


  def new
  end 

  
  def create 
    @product = Product.create ({name: params[:name], image: params[:image], description: params[:description], price: params[:price]  })
  #Adding flash Message when it is Created 
  flash[:success] = "New Product Made! Thank you!"
  redirect_to "/"
 end


  def edit 
    @product = Product.find_by(id: params[:id]) 
  end


  def update 
      @product = Product.find_by(id: params[:id]) 
      @product.update ({name: params[:name], image: params[:image], description: params[:description], price: params[:price]  })  
      #Adding flash Message when it is edited/updated
      flash[:success] = "New Product edit"
      redirect_to "/"
      redirect_to "/index/#{@product.id}"
  end


  def destroy 
      @product = Product.find_by(id: params[:id]) 
      @product.destroy 
      #Adds message when Product is destroyed   
      flash[:warning] = "New Product Destroyed"
      redirect_to "/"
  end


end
