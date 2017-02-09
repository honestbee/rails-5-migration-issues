require 'test_helper'

describe TestsController do
  before(:each) do
    @request.env['devise.mapping'] = Devise.mappings[:user]
    @user = User.create!(email: 'test@test.com', password: 'test123')
    sign_in @user
  end
  xit 'allows update using empty params' do

    put :update, {
        id: 1,
        test: {
            sub_resources: []
        }
    }
    expect(JSON.parse(response.body)).to eq([])
  end
end