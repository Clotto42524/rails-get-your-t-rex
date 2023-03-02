class Dinosaur < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true
  # validates :photo, presence: true
  has_one_attached :photo
end
