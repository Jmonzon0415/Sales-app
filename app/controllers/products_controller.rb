class ProductsController < ApplicationController
  def single
   @sp = Product.first
  
  end

  def all
    @ap = Product.all
  end

end
