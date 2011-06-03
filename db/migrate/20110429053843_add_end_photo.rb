class AddEndPhoto < ActiveRecord::Migration
  def self.up
    add_column :end_products,      :end_photo_file_name,					:string
    add_column :end_products,      :end_photo_content_type,					:string
    add_column :end_products,      :end_photo_file_size,					:integer
    add_column :end_products,      :end_photo_updated_at,					:datetime
  end

  def self.down
    remove_column :end_products, :end_photo_file_name
    remove_column :end_products, :end_photo_content_type
    remove_column :end_products, :end_photo_file_size
    remove_column :end_products, :end_photo_updated_at
  end
end
