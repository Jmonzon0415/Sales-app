class SuppliersController < ApplicationController
  def index 
    @as = Supplier.all  
  end


  def new
  end

  def create 
    Supplier.create ({name: params[:name], email: params[:email], phone: params[:phone] })

    #Adding flash Message when it is Created 
  flash[:success] = "New Supplier Added! Thank you!"
  redirect_to "/suppliers/index"
  end

  def edit 
   @supplier = Supplier.find_by(id: params[:id])
  end

  def update
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.update ({name: params[:name], email: params[:email], phone: params[:phone] })
    
  end


end

