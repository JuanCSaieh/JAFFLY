class Flight < ApplicationRecord
  belongs_to :airline
  has_and_belongs_to_many :reservations

  validates :origin, presence: true
  validates :destination, presence: true
  validates :departure_time, presence: true
  validates :arrival_time, presence: true
  validates :airline, presence: true
end
