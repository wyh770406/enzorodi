class Adminpanel::EndProductsController < ApplicationController
  before_filter :admin_required
  layout "admin"
  active_scaffold :end_products do |config|
    config.label = "产品小类"

    config.list.columns = [:top,:middle_product,:name,:end_product_desc,:end,:end_photo,:tech_pdf,:spec_pdf,:en_end,:en_end_photo,:en_tech_pdf,:en_spec_pdf]

    
    config.columns = [:middle_product,:name,:end_product_desc,:end,:end_photo,:tech_pdf,:spec_pdf,:en_end,:en_end_photo,:en_tech_pdf,:en_spec_pdf]
    columns[:name].label = "名称"
    columns[:end_product_desc].label = "说明"
    columns[:middle_product].label = "中类别"
    columns[:end].label = "产品图片"
    columns[:end_photo].label = "右边图片"
    columns[:tech_pdf].label = "产品手册"
    columns[:spec_pdf].label = "规格图"

    columns[:en_end].label = "产品图片_英文"
    columns[:en_end_photo].label = "右边图片_英文"
    columns[:en_tech_pdf].label = "产品手册_英文"
    columns[:en_spec_pdf].label = "规格图_英文"
    list.sorting = {:id => 'ASC'}
    config.columns[:end_product_desc].form_ui = :textarea
    config.columns[:end_product_desc].options = {:rows => 60, :cols => 100}

    config.columns[:middle_product].form_ui = :select
    config.columns[:end].form_ui = :paperclip
    config.columns[:end_photo].form_ui = :paperclip
    config.columns[:tech_pdf].form_ui = :paperclip
    config.columns[:spec_pdf].form_ui = :paperclip

    config.columns[:en_end].form_ui = :paperclip
    config.columns[:en_end_photo].form_ui = :paperclip
    config.columns[:en_tech_pdf].form_ui = :paperclip
    config.columns[:en_spec_pdf].form_ui = :paperclip
  end

  #def conditions_for_collection
    #   ['articles.id in (select article_id from articles_websitesinfs where websitesinf_id = ?)',params[:websiteid] ]
    # ['end_products.middle_product_id = ?',params[:id] ]
  #end

  def after_create_save(record);
    record.middle_product_id = params[:middle_id]
    record.save
    
  end
  
  def do_new
    super
    @operate="new"
    @middle_id=params[:middle_id].to_i
  end

  def do_edit
    super
    @operate="edit"
  end
end
