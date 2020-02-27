class PlanetsController < ApplicationController
  def new
    @planet = Planet.new
  end

  def create
    @planet = Planet.new(planet_params)
    @planet.save
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :photo)
  end
end
