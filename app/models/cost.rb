class Cost < ActiveRecord::Base
  belongs_to :car, inverse_of: :costs

  def months
    time_horizon_in_years * 12
  end

  def amount_due
    car.price - down_payment
  end

  def interest_rate_pct
    interest_rate / 100.0
  end

  def monthly_payment
    total = amount_due * (interest_rate_pct / 12)
    total / (1 - (1 + (interest_rate_pct / 12)) ** ( - months))
  end


  # def gas_expense(fuel_type_cost, fuel_capacity)
  #   (fuel_type_cost * fuel_capacity) * 4
  # end

  def net_present_value
    pv = down_payment
    # # payment = (monthly_payment + gas_expense)
    num = 1
    while num != months
      months_pay = monthly_payment / (1 + (interest_rate_pct / 12)) ** num
      num += 1
      pv = pv + months_pay
    end

    pv
  end
end
