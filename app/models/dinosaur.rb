class Dinosaur < ApplicationRecord
  has_many :bookings
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true
  validates :photo, presence: true
  has_one_attached :photo
end
