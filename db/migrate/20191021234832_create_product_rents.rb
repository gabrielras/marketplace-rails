class CreateProductRents < ActiveRecord::Migration[6.0]
  def change
    create_table :product_rents do |t|
      t.string :name
      t.text :description
      t.float :price
      t.date :start_date
      t.date :end_date
      t.references :product_category, foreign_key: true

      t.timestamps
    end
  end
end
