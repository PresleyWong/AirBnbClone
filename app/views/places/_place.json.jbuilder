json.extract! place, :id, :listing_title, :listing_image, :description, :address, :price, :max_guest, :number_rooms, :latitude, :longitude, :user_id, :created_at, :updated_at
json.url place_url(place, format: :json)
