class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.integer :num_guest
      t.datetime :start_date
      t.datetime :end_date
      t.integer  :price
      t.integer  :total
      t.boolean :status, default: false  
      t.references :user, index: true, foreign_key: true
      t.references :place, index: true, foreign_key: true

      t.timestamps
    end
  end
end


