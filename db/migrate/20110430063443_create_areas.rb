class CreateAreas < ActiveRecord::Migration
  def self.up
    create_table "areas", :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8', :force => true do |t|
      t.string   :name,                      :limit => 60
      t.timestamps
    end
  end

  def self.down
    drop_table "areas"
  end
end
