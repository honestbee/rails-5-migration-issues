class ProductSerializer < ActiveModel::Serializer
  attributes :id, :price_cents, :title, :description
end