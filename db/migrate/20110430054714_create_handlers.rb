class CreateHandlers < ActiveRecord::Migration
  def self.up
    create_table "handlers", :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8', :force => true do |t|
      t.string      :name,                :limit =>80
      t.string      :abbr,                :limit =>60
      t.string      :address,                :limit =>80
      t.string      :tel,                :limit =>60
      t.integer     :city_id
      t.string      :headquarter,                :limit =>60
      t.string      :depart,                :limit =>60
      t.timestamps
    end
  end

  def self.down
    drop_table "handlers"
  end
end
