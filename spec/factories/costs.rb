FactoryGirl.define do
  factory :cost do
    association :user
    association :car

    down_payment "5000"
    interest_rate "6"
    time_horizon_in_years "8"
  end
end
