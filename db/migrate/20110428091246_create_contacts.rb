class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table "contacts", :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8', :force => true do |t|
      t.string      :name,                :limit =>60
      t.string      :tel,                :limit =>60
      t.string      :fax,                :limit =>60
      t.string      :address,                :limit =>150
      t.string      :email,                :limit =>60
      t.text        :desc
      t.timestamps
    end
  end

  def self.down
    drop_table "contacts"
  end
end
