require 'test_helper'

describe Department do
  before(:each) do
    @brand = Department.create
  end
  it 'updates translated attributes' do
    d = Department.find(@brand.id)
    d.update!(name: 'test', name_zh_tw: 'test2')
    expect(d.reload.name).to eq('test')
    expect(d.reload.name_zh_tw).to eq('test2')
  end
end
