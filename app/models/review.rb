class Review < ApplicationRecord
  belongs_to :dinosaur
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: 0..5 }
end
