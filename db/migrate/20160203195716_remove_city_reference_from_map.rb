class RemoveCityReferenceFromMap < ActiveRecord::Migration
  def change
    remove_column :maps, :city_id, :integer
  end
end
