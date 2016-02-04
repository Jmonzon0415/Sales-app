class OrdersController < ApplicationController


def create

carted_products = current_user.carted_products.where(status: "Carted")

@order = Order.create(user_id: current_user.id)

carted_products.each do |carted_product| 
  carted_product.update(order_id: @order.id, status: "Purchased")
end 

@order.calculate_totals

redirect_to "/orders/#{@order.id}"
end


def show
  @order = Order.find_by(id: params[:id])


end 



end
