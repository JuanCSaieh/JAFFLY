class FlightsReservation < ApplicationRecord
  belongs_to :reservation
  belongs_to :flight
end
