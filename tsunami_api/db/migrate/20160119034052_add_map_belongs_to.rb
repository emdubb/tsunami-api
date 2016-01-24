class AddMapBelongsTo < ActiveRecord::Migration
  def change
    change_table :maps do |t|
      t.belongs_to :city, index: true, foreign_key: true
    end
  end
end
