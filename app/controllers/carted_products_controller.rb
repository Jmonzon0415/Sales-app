class CartedProductsController < ApplicationController

  def create
  @cp = CartedProduct.create({product_id: params[:product_id], quantity: params[:quantity], user_id: current_user.id, order_id: params[:order_id], status: "Carted" }) 

  redirect_to "/cart"
  end

  def index 
      if user_signed_in? && current_user.carted_products.where(status: "Carted").any?
    @cp = current_user.carted_products.where(status: "Carted")
    else 
      redirect_to "/"
    end
  end 

end 
