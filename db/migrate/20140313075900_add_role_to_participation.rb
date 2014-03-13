class AddRoleToParticipation < ActiveRecord::Migration
  def change
    add_column :participations, :role_id, :integer
    add_column :participations, :role_type, :string
  end
end
