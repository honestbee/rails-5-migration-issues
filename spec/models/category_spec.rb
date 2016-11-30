require 'test_helper'

describe Category do
  before(:each) do
    @category = Category.create
  end
  it 'updates translated attributes' do
    c = Category.find(@category.id)
    c.update!(title: 'test', title_zh_tw: 'test2')
    expect(c.reload.title).to eq('test')
    expect(c.reload.title_zh_tw).to eq('test2')
  end
end
