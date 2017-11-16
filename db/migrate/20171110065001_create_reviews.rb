class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t| 
      t.integer :rating, null: false, default: 1  
      t.string :comment
      t.references :user, index: true, foreign_key: true
      t.references :place, index: true, foreign_key: true

      t.timestamps
    end
  end
end
