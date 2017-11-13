class Review < ApplicationRecord
  belongs_to :user
  belongs_to :place

  enum rating: { "Worst": 1, "Poor": 2, "Satisfy": 3,  "Good": 4, "Excellent": 5 }

end
