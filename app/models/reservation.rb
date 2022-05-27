class Reservation < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :flights
  has_one :payment

  validates :name, presence: true
  before_save :calculate_price

  private
  def calculate_price
      self.value = self.flights.select(:price).sum{|flight| flight[:price] } if self.flights
  end
end
