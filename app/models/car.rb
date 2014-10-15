require 'rest_client'
class Car < ActiveRecord::Base
  has_many :costs, inverse_of: :car
  has_many :maintenances
  belongs_to :user

  def self.search(search)
    if search
      where("brand ILIKE?", "%#{search}%")
    else
      all
    end
  end

  def gallon_cost
    gallon_dollas = 0
    response = RestClient.get('https://www.kimonolabs.com/api/c6pgof8o?apikey=NHwsOdlwmdMfF5SgatHTXGGSD3y93Pb6')
    gas = JSON.parse(response)
    gas["results"]["collection1"].each do |row|
      if row["property11"] == fuel_type
        gallon_dollas = row["property10"]
      end
    end
    gallon_dollas
  end

  def miles_per_month
    1123.0
  end

  def cost_per_tank
    gallon_cost.to_f * fuel_capacity
  end

  def fill_up_frequency
    miles_per_month / (fuel_capacity * mpg)
  end

  def monthly_gas_expense
    cost_per_tank * fill_up_frequency
  end

  # def maintenance_timing(month, total_months)
  #   total_cost = 0
  #   maintenances.each do |maintenance|
  #     if maintenance.applies?(month, total_months)
  #       total_cost += maintenance.total_maintenance_cost
  #     end
  #   end
  #   total_cost
  # end

  def maintenance_timing(month, total_months)
    total_cost = 0
    mileage = miles_per_month

    maintenances.each do |work|
      case
      when work.frequency == 1 && month == 12 # annual checkup
        total_cost += work.total_maintenance_cost
      when work.frequency == 2 && month >= 24 && month % 12 == 0 # subsequent annual checkups
        total_cost += work.total_maintenance_cost
      when work.frequency == 3 && (mileage >= work.interval_mileage || month == work.interval_months)
        total_cost += work.total_maintenance_cost
        # work.interval_mileage += work.interval_mileage
      when work.frequency == 4 && work.interval_maintenance(month, miles_per_month)
        total_cost += work.total_maintenance_cost
      when work.frequency == 5 && month % 6 == 0
        total_cost += work.total_maintenance_cost
      when work.frequency == 6 && month == total_months
        total_cost += work.total_maintenance_cost
      when (work.frequency == 7 || work.frequency == 8 || work.frequency == 9) && month % 12 == 0
        total_cost += work.total_maintenance_cost
      end
    end
    mileage += miles_per_month
    total_cost
  end

end



