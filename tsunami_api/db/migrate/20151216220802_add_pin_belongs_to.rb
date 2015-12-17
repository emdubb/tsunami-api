class AddPinBelongsTo < ActiveRecord::Migration
  def change
    change_table :pins do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :map, index: true, foreign_key: true
    end
  end
end
