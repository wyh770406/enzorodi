class Handler < ActiveRecord::Base
  validates_presence_of :name,:message => " - 名称不能为空"
  belongs_to :city
end