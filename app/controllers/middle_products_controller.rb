class MiddleProductsController < ApplicationController
  def index
  end

  def show
    @middle_product=MiddleProduct.find(params[:id])
    render :partial=>"middle_product_body",:locals=>{:middle_product=>@middle_product}
  end
end
