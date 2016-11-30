require 'test_helper'

describe Brand do
  before(:each) do
    @brand = Brand.create
  end
  it 'updates translated attributes' do
    b = Brand.find(@brand.id)
    b.update!(name: 'test', name_zh_tw: 'test2')
    expect(b.reload.name).to eq('test')
    expect(b.reload.name_zh_tw).to eq('test2')
  end
end
