class Place < ApplicationRecord
  belongs_to :user
  has_one :amenity
  has_many :bookings 
end
