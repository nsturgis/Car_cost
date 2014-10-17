class Cost < ActiveRecord::Base
  belongs_to :car, inverse_of: :costs
  belongs_to :user

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

  def maintenance_cost
    num = 1
    total_cost = 0
      while num != months
        car.maintenance_timing(num, months)
        total_cost += car.maintenance_timing(num, months)
        num += 1
      end
    total_cost
  end

  def net_present_value
    pv = down_payment
    num = 1
    mileage = car.miles_per_month
    payment = (monthly_payment + car.monthly_gas_expense + car.maintenance_timing(num, months))
    while num != months
      months_pay = payment / (1 + (interest_rate_pct / 12)) ** num
      num += 1
      pv = pv + months_pay
    end
    pv
  end

  def local_dealers
    dealers = HTTParty.get("http://api.edmunds.com/api/dealer/v2/dealers/?zipcode=#{user.zipcode}&radius=50&make=#{car.brand}&state=new&pageNum=1&pageSize=10&sortby=distance%3AASC&view=basic&api_key=#{ENV['EDMUNDS_API_KEY']}")
  end


end




