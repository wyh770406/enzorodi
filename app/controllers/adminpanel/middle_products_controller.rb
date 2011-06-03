class Adminpanel::MiddleProductsController < ApplicationController
  before_filter :admin_required,:jquery_noconflict
  layout "admin"
  active_scaffold :middle_products do |config|
    config.label = "产品中类"
  #  config.list.columns = [:top_product,:name,:middle_product_desc,:middle_photo,:en_middle_photo]
    config.columns = [:top_product,:name,:middle_product_desc,:middle_photo,:en_middle_photo]
    columns[:name].label = "名称"
    columns[:middle_product_desc].label = "说明"
    columns[:top_product].label = "大类别"
    columns[:middle_photo].label = "图片"
    columns[:en_middle_photo].label = "图片_英文"
    list.sorting = {:id => 'ASC'}
    config.columns[:middle_product_desc].form_ui = :textarea
    config.columns[:middle_product_desc].options = {:rows => 60, :cols => 100}

	  config.columns[:top_product].form_ui = :select
	  config.columns[:middle_photo].form_ui = :paperclip
	  config.columns[:en_middle_photo].form_ui = :paperclip
		config.action_links.add 'end_products_list', :label => '产品小类', :type => :record, :page => true#,:parameters =>{:middle_id=>record.middle_product_id}



  end

  def end_products_list

    @middle_product_id=params[:id]

    @middle=MiddleProduct.find(@middle_product_id)
    @top=@middle.top_product
    @nav_str= @top.name+"---->"+@middle.name
    @locale=params[:locale]
    # redirect_to :controller=>"end_products",:action=>:index,:id=>params[:id]
  end
end
