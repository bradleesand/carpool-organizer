class Passengership < ActiveRecord::Base
  has_one :participation, as: :role, dependent: :destroy
  belongs_to :driver, foreign_key: 'driver_id'
end
