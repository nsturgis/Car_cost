class CarsController < ApplicationController

  def index
    @cars = Car.search(params[:search]).order(:brand)
  end

  def show
    @car = Car.find(params[:id])
    @cost = @car.costs
  end
end
