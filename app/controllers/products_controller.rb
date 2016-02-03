class ProductsController < ApplicationController
  

  def show
   @sp = Product.find_by(id: params[:id]) 
    
 end
  
  def index 
    @ap = Product.all
    
   if params[:filter]
     if params[:filter] == "L_H"
        @ap = Product.order(:price)
      elsif params[:filter] == "H_L"
        @ap = Product.order(price: :desc)
      elsif params[:filter] == "discount"
        @ap = Product.where("price < ?", 2)
      elsif params[:filter] == "random"
        @ap = Product.all.sample
        redirect_to "/index/#{@ap.id}"  
      end
    end
    if params[:category]
     @ap = Category.find_by(name: params[:category]).products                   
    end
end 

      

  def new
  end 
  
  def create 
    @product = Product.create ({name: params[:name], description: params[:description], price: params[:price]  })
    Image.create({url: params[:image], product_id: @product_id})if params[:image] != "" 
  
  #Adding flash Message when it is Created 
  flash[:success] = "New Product Made! Thank you!"
  redirect_to "/"
 end


  def edit 
    @product = Product.find_by(id: params[:id]) 
    @product.updated_at
  end


  def update 
      @product = Product.find_by(id: params[:id]) 
      @product.update ({name: params[:name], image: params[:image], description: params[:description], price: params[:price]  })  
      
      #Adding flash Message when it is edited/updated
      flash[:success] = "New Product Edited"
    
      redirect_to "/index/#{@product.id}"
  end


  def destroy 
      @product = Product.find_by(id: params[:id]) 
      @product.destroy 
      #Adds message when Product is destroyed   
      flash[:warning] = " Product Destroyed"
      redirect_to "/"
  end

  def search 
    @ap = Product.where("name LIKE ? OR description LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%") 
   render :index 
  end


end
