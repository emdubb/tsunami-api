class JoinMapsAndLegend < ActiveRecord::Migration
  def change
    change_table :legends do |t|
      t.belongs_to :maps, index: true
    end
  end
end
