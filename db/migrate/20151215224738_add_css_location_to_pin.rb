class AddCssLocationToPin < ActiveRecord::Migration
  def change
    change_table :pins do |t|
      t.string :css_location
    end
  end
end
