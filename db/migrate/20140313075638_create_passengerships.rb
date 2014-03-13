class CreatePassengerships < ActiveRecord::Migration
  def change
    create_table :passengerships do |t|

      t.timestamps
    end
  end
end
