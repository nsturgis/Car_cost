class CostsController < ApplicationController
  def new
    @car = Car.find(params[:car_id])
    @cost = Cost.new
  end

  def create
    @car = Car.find(params[:car_id])
    @cost = @car.costs.build(cost_params)
    if @cost.save
      binding.pry
      redirect_to @car
    else
      render 'cost/new'
    end
  end

  def index
    @costs = Cost.all
  end

  def show
    @car = Car.find(params[:car_id])
    @cost = @car.costs.params[:id]
  end


private

  def cost_params
    params.require(:cost).permit(:down_payment, :interest_rate, :time_horizon_in_years)
  end
end
