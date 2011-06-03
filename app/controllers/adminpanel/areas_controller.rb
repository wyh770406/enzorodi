class Adminpanel::AreasController < ApplicationController
  before_filter :admin_required,:jquery_noconflict
  layout "admin"
  active_scaffold :areas do |config|
    config.label = "区域"
    config.columns = [:name]
    columns[:name].label = "名称"

    list.sorting = {:id => 'ASC'}
    
    config.nested.add_link("城市", [:cities])
    config.columns[:cities].search_sql = "CONCAT(cities.name)"
    config.search.columns << :cities
  end
end