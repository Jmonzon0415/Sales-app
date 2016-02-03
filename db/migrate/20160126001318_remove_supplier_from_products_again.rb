class RemoveSupplierFromProductsAgain < ActiveRecord::Migration
  def change
    remove_column :products, :supplier, :string  
  end
end
