class RemoveCityIdFromMaps < ActiveRecord::Migration
  def change
    change_table :maps do |t|
      t.remove :city_id
    end
  end
end
