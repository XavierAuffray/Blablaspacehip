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
      @journey.available_seats -= @reservation.amount_of_passengers
      @journey.save
      redirect_to journey_reservation_path(@journey, @reservation)
    else
      render 'new'
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def edit
    @reservation = Reservation.find(params[:id])
    @journey = Journey.find(@reservation[:journey_id])
  end

  def update
    @reservation = Reservation.find(params[:id])
    @journey = Reservation.find(params[:journey_id])
    if @reservation.update(reservation_params)
      redirect_to journey_reservation_path(@journey, @reservation)
    else
      render 'new'
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to journeys_path
  end

  private
  def reservation_params
    params.require(:reservation).permit(:amount_of_passengers, :journey_id)
  end
end
