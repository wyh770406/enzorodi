class AddPdf < ActiveRecord::Migration
  def self.up
    add_column :end_products,      :tech_pdf_file_name,					:string
    add_column :end_products,      :tech_pdf_content_type,					:string
    add_column :end_products,      :tech_pdf_file_size,					:integer
    add_column :end_products,      :tech_pdf_updated_at,					:datetime
    add_column :end_products,      :spec_pdf_file_name,					:string
    add_column :end_products,      :spec_pdf_content_type,					:string
    add_column :end_products,      :spec_pdf_file_size,					:integer
    add_column :end_products,      :spec_pdf_updated_at,					:datetime
  end

  def self.down
    remove_column :end_products, :tech_pdf_file_name
    remove_column :end_products, :tech_pdf_content_type
    remove_column :end_products, :tech_pdf_file_size
    remove_column :end_products, :tech_pdf_updated_at
    remove_column :end_products, :spec_pdf_file_name
    remove_column :end_products, :spec_pdf_content_type
    remove_column :end_products, :spec_pdf_file_size
    remove_column :end_products, :spec_pdf_updated_at
  end
end
