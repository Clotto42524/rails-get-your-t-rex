class Dinosaur < ApplicationRecord
  has_many :bookings
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true
end
