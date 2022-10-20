class Review < ApplicationRecord
  belongs_to :restaurant
  rangey = (1...5)
  validates :content, :rating, presence: true
  validates :rating, comparison: { greater_than_or_equal_to: 0 }
  validates :rating, comparison: { less_than_or_equal_to: 5 }
  validates :rating, length: { maximum: 1 }
end
