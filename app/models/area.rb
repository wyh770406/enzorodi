class Area < ActiveRecord::Base
  validates_presence_of :name,:message => " - 名称不能为空"
  has_many :cities
end
