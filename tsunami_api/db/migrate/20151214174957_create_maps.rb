class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.integer :city_id
      t.string :name
      t.string :type
      t.string :map_url

      t.timestamps null: false
    end
  end
end
