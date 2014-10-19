class User < ActiveRecord::Base
  has_many :cars
  has_many :costs
  has_many :maintenances
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  validates :zipcode, format: { with: /\A\d{5}(-\d{4})?\z/, message: "Zip code should be valid" }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_create :set_labor_cost_per_hour

  def set_labor_cost_per_hour
    cost = HTTParty.get("https://api.edmunds.com/v1/api/maintenance/ziplaborrate/#{self.zipcode}?fmt=json&api_key=#{ENV['EDMUNDS_API_KEY']}")
    if cost["zipLaborRateHolder"] != []
      self.labor_cost_per_hour = cost["zipLaborRateHolder"][0]["laborRate"]
    end
  end
end
