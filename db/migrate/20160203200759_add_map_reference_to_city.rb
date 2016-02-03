class AddMapReferenceToCity < ActiveRecord::Migration
  def change
    change_table :maps do |t|
      t.references :city, index: true, foreign_key: true
    end
  end
end
