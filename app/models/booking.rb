class Booking < ApplicationRecord
  belongs_to :user

  validates :user, :dinosaur, presence: true
end
