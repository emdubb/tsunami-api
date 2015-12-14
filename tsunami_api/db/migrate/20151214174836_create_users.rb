class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :password
      t.integer :default_map
      t.text :emer_hospital
      t.text :emer_meeting_area
      t.string :emer_name1
      t.string :emer_phone1
      t.string :emer_name2
      t.string :emer_phone2
      t.string :emer_name3
      t.string :emer_phone3

      t.timestamps null: false
    end
  end
end
