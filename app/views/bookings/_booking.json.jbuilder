json.extract! booking, :id, :headcount, :total_price, :confirmation, :user_id, :place_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
