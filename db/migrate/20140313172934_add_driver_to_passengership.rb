class AddDriverToPassengership < ActiveRecord::Migration
  def change
    add_column :passengerships, :driver_id, :integer
  end
end
