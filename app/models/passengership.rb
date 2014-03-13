class Passengership < ActiveRecord::Base
  has_one :participation, as: :role, dependent: :destroy
end
