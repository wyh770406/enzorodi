class CreateEndProductscts < ActiveRecord::Migration
  def self.up
    create_table "end_products", :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8', :force => true do |t|
      t.string   :name,                      :limit => 60
      t.text   :end_product_desc
      t.integer  :middle_product_id
      t.string  :end_file_name
      t.string  :end_content_type
      t.integer  :end_file_size
      t.datetime :end_updated_at
      t.timestamps
    end
  end

  def self.down
    drop_table "end_products"
  end
end
