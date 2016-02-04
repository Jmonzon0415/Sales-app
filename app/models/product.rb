class Product < ActiveRecord::Base
  
validates :name, presence: true
validates :name, format: { with: /\A[a-zA-Z]+\z/ } 
validates :price, presence: true
validates :price, numericality: { only_integer: false, greater_than: 0 }





  has_many :images
  
  has_many :carted_products
  has_many :orders, through: :carted_products

  has_many :catergorized_products 
  has_many :catergories, through: :catergorized_products

  belongs_to :supplier
  
   def friendly_updated_at
    updated_at.strftime("%b %e, %Y" )
  end  

  
  def sale_message 
    if price.to_f < 2.0  
       "Discount Item!!" 
    else 
       "On sale!!!"
    end
  end

  
  def tax
    tax = price.to_f * 0.09
  end

  
  def total_sum
    total = price.to_f + tax 
  p total  
  end 

  def supplier_name 
    supplier.name
  end

  def get_first_image
    if images.first 
        images.first.url
      else 
        Image.first.url
    end
  
  end 







end
