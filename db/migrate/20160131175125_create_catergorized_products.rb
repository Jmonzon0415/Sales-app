class CreateCatergorizedProducts < ActiveRecord::Migration
  def change
    create_table :catergorized_products do |t|
      t.integer :product_id
      t.integer :category_id

      t.timestamps 
    end
  end
end
