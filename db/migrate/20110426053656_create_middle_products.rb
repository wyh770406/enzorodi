class CreateMiddleProducts < ActiveRecord::Migration
  def self.up
    create_table "middle_products", :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8', :force => true do |t|
      t.string   :name,                      :limit => 60
      t.text   :middle_product_desc
      t.integer  :top_product_id
      t.timestamps
    end
  end

  def self.down
    drop_table "middle_products"
  end
end
