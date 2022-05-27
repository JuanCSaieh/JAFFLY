class FlightsController < ApplicationController
	def index
		@flights = Flight.where('arrival_time > ?', Time.now.next_day.to_i )
	end
end
