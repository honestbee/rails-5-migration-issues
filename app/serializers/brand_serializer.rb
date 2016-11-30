class BrandSerializer < ActiveModel::Serializer
  attributes :id, :departments, :name
  def departments
    ActiveModel::ArraySerializer.new(object.departments, each_serializer: DepartmentSerializer)
  end
end