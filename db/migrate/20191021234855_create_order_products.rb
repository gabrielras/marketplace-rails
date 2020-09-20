class CreateOrderProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :order_products do |t|
      t.integer :quantity
      t.text :comment
      t.references :order, foreign_key: true
      t.references :product_rent, foreign_key: true

      t.timestamps
    end
  end
end
