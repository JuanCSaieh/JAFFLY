class ReservationsController < ApplicationController
	def index
		@reservations = Reservation.all
		# needs to change, look for users reservations!
	end
end
