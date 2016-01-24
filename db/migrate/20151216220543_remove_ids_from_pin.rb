class RemoveIdsFromPin < ActiveRecord::Migration
  def change
    change_table :pins do |t|
      t.remove :map_id, :user_id
    end
  end
end
