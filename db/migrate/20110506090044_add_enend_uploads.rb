class AddEnendUploads < ActiveRecord::Migration
  def self.up
    add_column :end_products,      :en_end_file_name,					:string
    add_column :end_products,      :en_end_content_type,					:string
    add_column :end_products,      :en_end_file_size,					:integer
    add_column :end_products,      :en_end_updated_at,					:datetime
    add_column :end_products,      :en_end_photo_file_name,					:string
    add_column :end_products,      :en_end_photo_content_type,					:string
    add_column :end_products,      :en_end_photo_file_size,					:integer
    add_column :end_products,      :en_end_photo_updated_at,					:datetime

    add_column :end_products,      :en_tech_pdf_file_name,					:string
    add_column :end_products,      :en_tech_pdf_content_type,					:string
    add_column :end_products,      :en_tech_pdf_file_size,					:integer
    add_column :end_products,      :en_tech_pdf_updated_at,					:datetime
    add_column :end_products,      :en_spec_pdf_file_name,					:string
    add_column :end_products,      :en_spec_pdf_content_type,					:string
    add_column :end_products,      :en_spec_pdf_file_size,					:integer
    add_column :end_products,      :en_spec_pdf_updated_at,					:datetime
  end

  def self.down
    remove_column :end_products, :en_end_file_name
    remove_column :end_products, :en_end_content_type
    remove_column :end_products, :en_end_file_size
    remove_column :end_products, :en_end_updated_at
    remove_column :end_products, :en_end_photo_file_name
    remove_column :end_products, :en_end_photo_content_type
    remove_column :end_products, :en_end_photo_file_size
    remove_column :end_products, :en_end_photo_updated_at

    remove_column :end_products, :en_tech_pdf_file_name
    remove_column :end_products, :en_tech_pdf_content_type
    remove_column :end_products, :en_tech_pdf_file_size
    remove_column :end_products, :en_tech_pdf_updated_at
    remove_column :end_products, :en_spec_pdf_file_name
    remove_column :end_products, :en_spec_pdf_content_type
    remove_column :end_products, :en_spec_pdf_file_size
    remove_column :end_products, :en_spec_pdf_updated_at
  end
end
