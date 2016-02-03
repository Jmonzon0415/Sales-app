class AddSupplierToProducts < ActiveRecord::Migration
  def change
    add_column :products, :supplier, :string 
  end
end
