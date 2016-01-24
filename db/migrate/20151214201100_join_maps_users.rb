class JoinMapsUsers < ActiveRecord::Migration
  def change
    create_table :maps_users, id: false do |t|
      t.belongs_to :map, index: true
      t.belongs_to :user, index: true
    end
  end
end
