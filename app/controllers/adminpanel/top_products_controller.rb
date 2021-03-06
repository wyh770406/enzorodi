class Adminpanel::TopProductsController < ApplicationController
  before_filter :admin_required,:jquery_noconflict
  layout "admin"
  active_scaffold :top_products do |config|
    config.label = "产品大类"
#    config.list.columns = [:name,:top_product_desc,:top_photo,:en_top_photo]
    config.columns = [:name,:top_product_desc,:top_photo,:en_top_photo]
    columns[:name].label = "名称"
    columns[:top_product_desc].label = "说明"
    columns[:top_photo].label = "图片"
    columns[:en_top_photo].label = "图片_英文"
    list.sorting = {:id => 'ASC'}
    config.columns[:top_product_desc].form_ui = :textarea
    config.columns[:top_product_desc].options = {:rows => 60, :cols => 100}

    config.columns[:top_photo].form_ui = :paperclip
    config.columns[:en_top_photo].form_ui = :paperclip
    # config.nested.add_link("产品子类", [:middle_products])
    # config.columns[:middle_products].search_sql = "CONCAT(middle_products.name,middle_products.top_product_desc)"
    # config.search.columns << :middle_products
  end

end
