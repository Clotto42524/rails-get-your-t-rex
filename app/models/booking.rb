class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dinosaur

  validates :user, :dinosaur, presence: true
end
