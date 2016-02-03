class AddCityReferenceToMap < ActiveRecord::Migration
  def change
    change_table :cities do |t|
      t.references :map, index: true, foreign_key: true
    end
  end
end
