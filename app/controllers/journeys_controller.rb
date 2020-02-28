  class JourneysController < ApplicationController
  def index
    @journeys = Journey.all

    if current_driver
      current_sign_in = current_driver.current_sign_in_at
      last_sign_in = current_driver.last_sign_in_at
      @sign_in_timing = current_sign_in - last_sign_in
    else
      current_sign_in = current_passenger.current_sign_in_at
      last_sign_in = current_passenger.last_sign_in_at
      @sign_in_timing = current_sign_in - last_sign_in
    end
  end

  def  new
    @journey = Journey.new
  end

  def create
    @journey = Journey.new(journey_params)
    @journey.driver = current_driver
    @planet = Planet.where(name: @journey.arrival)
    @journey.photo =  @planet[0]['photo']
    if @journey.save
      redirect_to driver_path(current_driver)
    else
      render 'new'
    end
  end

  def show
    @journey = Journey.find(params[:id])
  end


  def destroy
    @journey = Journey.find(params[:id])
    @journey.destroy
    redirect_to driver_path(current_driver)
  end

  private

  def journey_params
    params.require(:journey).permit(:departure, :arrival, :date, :price, :available_seats, :spaceship_name, :driver_id, :photo)
  end
end
