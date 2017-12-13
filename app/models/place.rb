class Place < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :reservations 
  mount_uploaders :images, ImagesUploader

  geocoded_by :address
  after_validation :geocode, if: :address_changed?


  validates :home_type, presence: true
  validates :accommodate, presence: true
  validates :bed_room, presence: true
  validates :bath_room, presence: true
  validates :listing_name, presence: true, length: { maximum: 50 }
  validates :summary, presence: true, length: { maximum: 500 }
  validates :address, presence: true

  

   def average_rating
    reviews.count == 0 ? 0 : reviews.average(:star).round(2)
  end

end
