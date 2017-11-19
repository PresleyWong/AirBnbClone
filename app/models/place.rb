class Place < ApplicationRecord
  belongs_to :user
  has_one :amenity  
  has_many :reviews

  has_many :bookings 
  has_many :users, :through => :bookings
end
