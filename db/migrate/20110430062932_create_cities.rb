class CreateCities < ActiveRecord::Migration
  def self.up
    create_table "cities", :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8', :force => true do |t|
      t.string   :name,                      :limit => 60
      t.integer  :area_id
      t.timestamps
    end
  end

  def self.down
    drop_table "cities"
  end
end
