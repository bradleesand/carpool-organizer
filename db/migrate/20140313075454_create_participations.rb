class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.references :trip, index: true
      t.references :user, index: true
      t.float :longitude
      t.float :latitude
      t.string :address

      t.timestamps
    end
  end
end
