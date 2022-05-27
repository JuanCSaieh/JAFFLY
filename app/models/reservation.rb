class Reservation < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :flights
  has_one :payment

  validates :name, presence: true
  after_update :calculate_price

  private
  def calculate_price
   self.value = self.flights.select(:price).to_json.sum{|h| h[:price] } if self.flights
  end
end
