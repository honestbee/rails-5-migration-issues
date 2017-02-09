require 'test_helper'

describe Brand do
  before(:each) do
    @brand = Brand.create(name: 'foo', name_zh_tw: 'bar')
  end
  it 'updates translated attributes' do
    b = Brand.update_scope.find(@brand.id)
    b.update!(name: 'test', name_zh_tw: 'test2')
    expect(b.reload.name).to eq('test')
    expect(b.reload.name_zh_tw).to eq('test2')
  end
  it 'loads all locales in default scope' do
    expect(Brand.update_scope.first.translations.size).to eq(2)
  end
end
