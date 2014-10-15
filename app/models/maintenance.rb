class Maintenance < ActiveRecord::Base
  belongs_to :car
  belongs_to :user

  # def labor_costs_per_hour(zipcode)

  #  rates = [
  #   {'02889' => 25.00},
  #   {'02885' => 14.00},
  #   {'02809' => 10.00}
  #   ]

  #   rates.each do |rate|
  #     if zipcode.include?(rate)
  #       return rate
  #   end
  # end
  # end

  # def labor_cost(zipcode)
  #   cost_per_hour = labor_cost.find_by(zipcode: zipcode)
  #   labor_units * cost_per_hour
  # end

  def labor_cost
    labor_units * 20.00
  end

  def part_cost
    part_units * cost_per_unit
  end

  def total_maintenance_cost
    labor_cost + part_cost
  end


  def mile_interval_frequency_in_months(mileage)
    interval_mileage / mileage
  end

  def interval_maintenance(month, avg_miles_per_month)
    if interval_mileage == nil
      month % interval_months == 0
    elsif interval_months == nil
      month % mile_interval_frequency_in_months(avg_miles_per_month) < 1
    else
      month % mile_interval_frequency_in_months(avg_miles_per_month) < 1 || month % interval_months == 0
    end
  end

  # def mileage_frequency
  #  month % mile_interval_frequency_in_months(car.miles_per_month) == car.miles_per_month
  # end


  # def maintenance_timing(month, mileage, total_months)
  #   total_cost = 0

  #   car.maintenances.each do |work|
  #     case
  #     when work.frequency == 1 && month == 12
  #       total_cost += total_maintenance_cost
  #     when work.frequency == 2 && month >= 24 && month % 12 == 0
  #       total_maintenance_cost
  #     when work.frequency == 3 && mileage >= interval_mileage || month == interval_months
  #       total_maintenance_cost
  #     when work.frequency == 4 && mileage % interval_mileage >= 0 || month % interval_months == 0
  #       total_maintenance_cost
  #     when work.frequency == 5 && month % 6 == 0
  #       total_maintenance_cost
  #     when work.frequency == 6 && month == total_months
  #       total_maintenance_cost
  #     when work.frequency == 7 || work.frequency == 8 || work.frequency == 9 && month % 12 == 0
  #       total_maintenance_cost
  #     end
  #   end
  # end

# goes on car model
  # def maintenance_timing(month, total_months)
  #   total_cost = 0

  #   maintenances.each do |maintenance|
  #     if maintenance.applies?(month, mileage, total_months)
  #       total_cost += maintenance.total_maintenance_cost
  #     end
  #   end
  # end

  # def applies?(month, total_months)
  #   if inspection_maintenance?(month)
  #     true
  #   elsif six_month_maintenance?(month) && month % 6 == 0
  #     true
  #   elsif first_yearly_maintenance?(month)
  #     true
  #   elsif warning_light_maintenance?(month, total_months)
  #     true
  #   elsif subsequent_interval_maintenance?(month)
  #     true
  #   elsif subsequent_interval_maintenance?(month)
  #     true
  #   end
  # end


  # end

      # if maintenance.first_yearly_maintenance?

      # elsif maintenance.extended_yearly_maintenance?
      # elsif maintenance.first_interval_maintenance?
      # elsif maintenance.subsequent_interval_maintenance?
      # elsif maintenance.six_month_maintenance?
      # elsif maintenance.more_frequent_maintenance?
      # elsif maintenance.warning_light_maintenance?
      # elsif maintenance.inspection_maintenance?
      # end
    # ends

  #   total_cost
  # end


  # def first_yearly_maintenance?(month)
  #   frequency == 1 && month == 12
  # end

  # def extended_yearly_maintenance?(month)
  #   frequency == 2 && month >= 24 && month % 12 == 0
  # end

  # def first_interval_maintenance?(month)
  #   frequency == 3 && month == interval_months
  # end

  # def subsequent_interval_maintenance?(month)
  #   if interval_months == 0
  #     return false
  #   else
  #     frequency == 4 && month % interval_months == 0
  #   end
  # end
  # def six_month_maintenance?(month)
  #   frequency == 5 && month % 6 == 0
  # end

  # # def more_frequent_maintenance?
  # #   frequency == 5 && month % 6 == 0
  # # end

  # def warning_light_maintenance?(month, total_months)
  #   frequency == 6 && month == total_months
  # end

  # def inspection_maintenance?(month)
  #   (frequency == 7 || frequency == 8 || frequency == 9) && month % 12 == 0
  # end

  # def annual_maintenance?
  #   inspection_maintenance? || first_yearly_maintenance? || extended_yearly_maintenance?
  # end


  # end
end
