class TestsController < ApplicationController
  def update
    render json: test_params[:sub_resources], root: false
  end

  def test_params
    params.require(:test).permit(sub_resources: [])
  end
end