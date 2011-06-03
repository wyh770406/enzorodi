class Adminpanel::HandlersController < ApplicationController
  before_filter :admin_required,:jquery_noconflict
  layout "admin"
  active_scaffold :handlers do |config|
    config.label = "城市"
    config.columns = [:city,:name,:abbr,:address,:tel,:headquarter,:depart]
    columns[:name].label = "店名"
    columns[:abbr].label = "简称"
    columns[:address].label = "地址"
    columns[:tel].label = "电话"
    columns[:city].label = "城市"
    columns[:headquarter].label = "总部"
    columns[:depart].label = "部门"
    
    list.sorting = {:id => 'ASC'}

	  config.columns[:city].form_ui = :select
  end
end