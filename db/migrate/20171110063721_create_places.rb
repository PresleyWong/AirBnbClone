class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :listing_title
      t.string :listing_image
      t.string :description
      t.string :address
      t.decimal  :price
      t.integer :max_guest
      t.integer :number_rooms
      t.float  :latitude
      t.float  :longitude
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
