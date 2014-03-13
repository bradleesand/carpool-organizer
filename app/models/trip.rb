class Trip < ActiveRecord::Base
  has_many :driverships, dependent: :destroy
  has_many :drivers, class_name: 'User', through: :driverships
  has_many :passengerships, dependent: :destroy
  has_many :passengers, class_name: 'User', through: :passengerships
end
