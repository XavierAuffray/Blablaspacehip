class ReservationsController < ApplicationController
  def new
    @journey = Journey.find(params[:journey_id])
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @journey = Journey.find(params[:journey_id])
    @reservation.journey = @journey
    @passenger = current_passenger
    @reservation.passenger = @passenger
    if @reservation.save
      redirect_to journey_reservation_path(@reservation[:journey_id])
    else
      render 'new'
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  private
  def reservation_params
    params.require(:reservation).permit(:amount_of_passengers, :journey_id)
  end
end
