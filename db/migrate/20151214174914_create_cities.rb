class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.string :county
      t.string :twitter
      t.string :email
      t.string :website1
      t.string :website2
      t.string :website3
      t.string :mobile_app
      t.string :facebook
      t.string :station

      t.timestamps null: false
    end
  end
end
