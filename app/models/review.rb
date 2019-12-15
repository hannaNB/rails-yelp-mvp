class Review < ApplicationRecord
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5], allow_nil: false}
  validates :content, presence: true, length: { maximum: 500 }
  belongs_to :restaurant
end
