class AddUniqIndexToMapsUsers < ActiveRecord::Migration
  def change
    add_index :maps_users, [ :map_id, :user_id ], :unique => true, :name => 'by_map_and_user'
  end
end
