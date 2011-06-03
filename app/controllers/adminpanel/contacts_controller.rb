class Adminpanel::ContactsController < ApplicationController
  before_filter :admin_required
  layout "admin"
  active_scaffold :contacts do |config|
    config.label = "联系方式"
    config.columns = [:name,:tel,:fax,:address,:email,:desc]
    columns[:name].label = "姓名"
    columns[:tel].label = "电话"
    columns[:fax].label = "传真"
    columns[:address].label = "地址"
    columns[:email].label = "电子邮箱"
    columns[:desc].label = "说明"

    list.sorting = {:created_at => 'DESC'}
    config.columns[:desc].form_ui = :textarea
    config.columns[:desc].options = {:rows => 30, :cols => 100}
  end
end
