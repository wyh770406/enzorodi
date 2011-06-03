class Adminpanel::CitiesController < ApplicationController
  before_filter :admin_required,:jquery_noconflict
  layout "admin"
  active_scaffold :cities do |config|
    config.label = "城市"
    config.columns = [:area,:name]
    columns[:name].label = "名称"
    columns[:area].label = "区域"
    list.sorting = {:id => 'ASC'}

	  config.columns[:area].form_ui = :select
    config.nested.add_link("经销商", [:handlers])
    config.columns[:handlers].search_sql = "CONCAT(handlers.name)"
    config.search.columns << :handlers
  end
end