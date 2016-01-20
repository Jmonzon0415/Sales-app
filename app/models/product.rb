class Product < ActiveRecord::Base
  
   def friendly_updated_at
    updated_at.strftime("%b %e, %Y" )
  end  


end
