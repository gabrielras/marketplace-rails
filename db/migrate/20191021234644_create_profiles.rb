class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.text :description
      t.integer :status
      t.string :state
      t.string :street
      t.string :city
      t.string :neighborhood
      t.string :number
      t.string :complement
      t.string :reference
      t.string :cep
      t.float :latitude
      t.float :longitude
      t.references :category, foreign_key: true
      t.float :cpf
      t.float :cnpj

      t.timestamps
    end
  end
end
