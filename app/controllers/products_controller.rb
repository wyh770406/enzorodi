class ProductsController < ApplicationController
  def index
    @top_product=TopProduct.find(:first)
  end

  def show
    @top_product=TopProduct.find(params[:id])
    render :partial=>"top_product_body",:locals=>{:top_product=>@top_product}

  end

  def show_cat
    @top_product=TopProduct.find(params[:id])
  end
end