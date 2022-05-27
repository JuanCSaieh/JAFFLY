class FlightsController < ApplicationController
	def index
		@flights = Flight.where('arrival_time > ?', Time.now.next_day.to_i )
	end

	def edit
		set_flight_item

		respond_to do |format|
			@flight_item.reservations << Reservation.find(current_user.defaultReservation)
			if Reservation.find(current_user.defaultReservation).save
				format.html { redirect_to flights_path, notice: 'Your flight has been added to your Reservation' }
			else
				format.html { render :new }
			end
		end
	end

	private

	def flight_params
		flight_params = params.require(:flight).permit(:id)
	end

	def set_flight_item
		@flight_item = Flight.find(params[:id])
	end
end
