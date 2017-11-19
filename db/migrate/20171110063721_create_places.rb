class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :listing_title
      t.string :listing_image
      t.string :description
      t.string :address
      t.integer :postcode
      t.string :city
      t.string :country
      t.decimal  :price
      t.integer :max_guest
      t.integer :num_rooms
      t.integer :num_beds
      t.integer :num_baths
      t.float  :latitude
      t.float  :longitude
      t.integer :owner_id  

      t.timestamps
    end    
  end
end
