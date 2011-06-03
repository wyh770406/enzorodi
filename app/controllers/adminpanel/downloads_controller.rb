class Adminpanel::DownloadsController < ApplicationController
  before_filter :admin_required
  layout "admin"
  active_scaffold :downloads do |config|
    config.label = "下载区"

#    config.list.columns = [:title,:desc,:pdf,:en_pdf]
    config.columns = [:title,:desc,:pdf,:en_pdf]
    columns[:title].label = "标题"
    columns[:desc].label = "说明"
    columns[:pdf].label = "上传文件"
    columns[:en_pdf].label = "上传文件_英文"

    list.sorting = {:id => 'ASC'}
    config.columns[:desc].form_ui = :textarea
    config.columns[:desc].options = {:rows => 60, :cols => 100}

    config.columns[:pdf].form_ui = :paperclip
    config.columns[:en_pdf].form_ui = :paperclip
  end
end
