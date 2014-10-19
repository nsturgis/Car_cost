class Maintenance < ActiveRecord::Base
  belongs_to :car


  def labor_cost(user)
    cost_per_unit = user.labor_cost_per_hour || 20.00
    cost_per_unit * labor_units
  end

  def part_cost
    part_units * cost_per_unit
  end

  def total_maintenance_cost(user)
    labor_cost(user) + part_cost
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


end
