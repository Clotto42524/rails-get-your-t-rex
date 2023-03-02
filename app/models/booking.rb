class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dinosaur

  validates :user, :dinosaur, :confirmation_status, presence: true
end
