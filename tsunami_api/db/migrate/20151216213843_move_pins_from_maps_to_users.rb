class MovePinsFromMapsToUsers < ActiveRecord::Migration
  def change
    change_table :pins do |t|
      t.integer :user_id
    end
  end
end
