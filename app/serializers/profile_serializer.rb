class ProfileSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :name, :description, :review, :status, :state, 
  :city, :street, :neighborhood, :number, :complement,
  :reference, :cep, :cpf, :cnpj, :image_url

  has_many :product_categories, if: -> { @instance_options[:product_categories]}

  def image_url
    rails_blob_url(object.image)
  end

  def review
    object.reviews&.average(:value)
  end
end
