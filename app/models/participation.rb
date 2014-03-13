class Participation < ActiveRecord::Base
  belongs_to :trip
  belongs_to :user
  belongs_to :role, polymorphic: true
end
