class DepartmentSerializer < ActiveModel::Serializer
  attributes :id, :categories, :name
  def categories
    ActiveModel::ArraySerializer.new(object.categories, each_serializer: CategorySerializer)
  end
end