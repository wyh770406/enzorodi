class CreateDownloads < ActiveRecord::Migration
  def self.up
    create_table "downloads", :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8', :force => true do |t|
      t.string      :title,                :limit =>100, :null=>false,:default=>""
      t.text        :desc, :null=>false,:default=>""
      t.string  :pdf_file_name
      t.string  :pdf_content_type
      t.integer  :pdf_file_size
      t.datetime :pdf_updated_at
      t.timestamps
    end
  end

  def self.down
    drop_table "downloads"
  end
end
