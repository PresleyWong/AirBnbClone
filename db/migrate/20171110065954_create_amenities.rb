class CreateAmenities < ActiveRecord::Migration[5.0]
  def change
    create_table :amenities do |t|
      t.boolean :kitchen
      t.boolean :internet
      t.boolean :tv
      t.boolean :cable_tv
      t.boolean :internet
      t.boolean :washer
      t.boolean :gym
      t.boolean :handicap_accessible
      t.boolean :smoking_allowed
      t.boolean :indoor_fireplace
      t.boolean :air_conditiong
      t.boolean :heating
      t.boolean :dryer
      t.references :place, index: true, foreign_key: true

      t.timestamps
    end
  end
end
