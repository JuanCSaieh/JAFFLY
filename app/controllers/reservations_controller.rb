class ReservationsController < ApplicationController
	before_action :set_reservation_item, only: [:edit, :update, :show, :destroy]

	def index
		@reservations = Reservation.where(user_id: current_user.id)
	end

	def new
		@reservation_item = Reservation.new
	end

	def create
		@reservation_item = Reservation.new(reservation_params)

		respond_to do |format|
			@reservation_item.user_id = current_user.id
			if @reservation_item.save
				format.html { redirect_to reservations_path, notice: 'Your reservation item is now live' }
			else
				format.html { render :new }
			end
		end
	end

	def show
		set_reservation_item
	end

	def edit
		set_reservation_item
	end

	def update
		set_reservation_item

		respond_to do |format|
			if @reservation_item.update(reservation_params)
				format.html { redirect_to reservations_path, notice: 'Reservation was successfully updated.' }
			else
				format.html { render :edit }
			end
		end
	end

	def destroy
		set_reservation_item
		@reservation_item.destroy

		respond_to do |format|
			format.html { redirect_to reservations_path, notice: 'Record was removed' }
		end
	end

	def change
		set_reservation_item
		if @reservation_item
			User.find(current_user.id).update(defaultReservation: set_reservation_item.id)
			respond_to do |format|
				format.html { redirect_to flights_path, notice: 'Current Reservation has been changed.' }
			end
		end
	end

	def payment
		set_reservation_item
		if @reservation_item
			@reservation_item.update(paymentStatus: true)
			respond_to do |format|
				format.html { redirect_to reservations_path, notice: 'Gracias por su Pago.' }
			end
		end
	end


	private

	def reservation_params
		reservation_params = params.require(:reservation).permit(:name)
	end

	def set_reservation_item
		@reservation_item = Reservation.find(params[:id])
	end
end