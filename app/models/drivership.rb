class Drivership < ActiveRecord::Base
  has_one :participation, as: :role, dependent: :destroy
end
