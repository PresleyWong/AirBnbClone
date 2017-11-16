class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.integer :headcount
      t.decimal :total_price
      t.date :check_in_date
      t.date :check_out_date
      t.boolean :confirmation, default: false
      t.references :user, index: true, foreign_key: true
      t.references :place, index: true, foreign_key: true

      t.timestamps
    end
  end
end
