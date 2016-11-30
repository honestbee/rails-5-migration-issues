class CategorySerializer < ActiveModel::Serializer
  attributes :id, :products, :title
  def products
    ActiveModel::ArraySerializer.new(object.products, each_serializer: ProductSerializer)
  end
end