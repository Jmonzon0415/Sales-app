class Product < ActiveRecord::Base
  
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
    p "$#{total.to_f.round(2)}" 
  end 

  



end
