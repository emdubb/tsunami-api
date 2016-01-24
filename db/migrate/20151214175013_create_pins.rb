class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :coordinates

      t.timestamps null: false
    end
  end
end
