class PassengersController < ApplicationController
  def show
    @passenger = current_passenger
  end
end
