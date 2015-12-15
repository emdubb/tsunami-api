class AddMapIdToPins < ActiveRecord::Migration
  def change
    change_table :pins do |t|
      t.integer :map_id
    end
  end
end
