class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.datetime :arrival
      t.boolean :public
      t.string :name
      t.float :latitude
      t.float :longitude
      t.string :address

      t.timestamps
    end
  end
end
