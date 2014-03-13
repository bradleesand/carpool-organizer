class CreateDriverships < ActiveRecord::Migration
  def change
    create_table :driverships do |t|
      t.integer :seats

      t.timestamps
    end
  end
end
