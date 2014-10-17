class CostsController < ApplicationController
  before_action :authenticate_user!
  def new
    @car = Car.find(params[:car_id])
    @cost = Cost.new
  end

  def create
    @car = Car.find(params[:car_id])
    @cost = @car.costs.build(cost_params)
    @cost.user = current_user
    if @cost.save
      redirect_to car_path(@car)
    else
      render 'costs/new'
    end
  end

  def show
    @car = Car.find(params[:car_id])
    @cost = Cost.find(params[:id])
  end

  def destroy
    @car = Car.find(params[:car_id])
    @cost = Cost.find(params[:id])
    @cost.destroy

    redirect_to car_path(@car)
  end

private

  def cost_params
    params.require(:cost).permit(:down_payment, :interest_rate, :time_horizon_in_years)
  end
end
