class DropTable < ActiveRecord::Migration
  def change
    drop_table :legends
  end
end
