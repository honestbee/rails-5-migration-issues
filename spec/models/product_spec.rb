require 'test_helper'

describe Department do
  before(:each) do
    @brand = Brand.create
    @department = Department.create(brand: @brand)
    @categories = [
        Category.create(department: @department), Category.create(department: @department)
    ]
  end
  it 'updates category associations' do
    @product = Product.create
    @product.categories = @categories
    @product.save!
    expect(@product.reload.categories.count).to eq(2)
  end

  it 'serializes the translated description' do
    product = Product.create!(description: {test: 1})
    expect(product.reload.description).to eq({ 'test' => 1})
  end
end
