class EndProductsController < ApplicationController
  def index
  end

  def show
    @end_product=EndProduct.find(params[:id])
    @related_end_products = @end_product.related_end_products
    render :partial=>"end_product_body",:locals=>{:end_product=>@end_product,:related_end_products=>@related_end_products}
  end

  def display_photo
    @end_product=EndProduct.find(params[:id])
    render :layout=>false
  end
end