# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# require 'httparty'
#   results = HTTParty.get('https://api.edmunds.com/api/vehicle/v2/makes?state=new&year=2014&view=basic&fmt=json&api_key=fffw6c557sgk7vp27b9hsyhh')
#   makes = results["makes"]
#     makes.each do |brand|
#       brand["models"].each do |car|
#         car = Car.create(brand: car["id"], model: car["name"], nicename: car["niceName"], year: car["years"][0]["year"])
#       end
#     end



# car_results = HTTParty.get("...")

# car_results.each do |result|
#   car_attrs = {
#     brand: result["brand"],
#     model: result["model"],
#   }
#   car = Car.find_or_create_by(car_attrs)

#   maintenance_results = HTTParty.get("...")
#   car_photo = HTTParty.get("...")
# end


car = Car.create([{brand: 'audi', model: 'A8', nicename: 'a8', year: 2014, style_id: 456, mpg: 23, fuel_type: 'Regular',fuel_capacity: 20, price: 23000},
{brand: 'jeep', model: '5C', nicename: '5c', year: 2014, style_id: 459, mpg: 28, fuel_type: 'Midgrade', fuel_capacity: 25, price: 35000},
{brand: 'acura', model: 'AX', nicename: 'ax', year: 2014, style_id: 458, mpg: 32, fuel_type: 'Premium', fuel_capacity: 17, price: 32000},
{brand: 'toyota', model: 'T8', nicename: 't8', year: 2014, style_id: 455, mpg: 35, fuel_type: 'Premium', fuel_capacity: 22, price: 28000},
{brand: 'honda', model: 'accord', nicename: 'accord', year: 2014, style_id: 453, mpg: 21, fuel_type: 'Midgrade', fuel_capacity: 28, price: 30000},
{brand: 'bmw', model: '6 series', nicename: '6 series', year: 2014, style_id: 450, mpg: 18, fuel_type: 'diesel', fuel_capacity: 25, price: 29000}])

maintenance = Maintenance.create([{car_id: 1, maintenance_id: 1057, interval_mileage: 15000, frequency: 4, labor_units: 2.0, part_units: 1.4, cost_per_unit: 8.0},
  {car_id: 2, maintenance_id: 1052, interval_months: 6, frequency: 2, labor_units: 0.0, part_units: 2.4, cost_per_unit: 10.0},
  {car_id: 3, maintenance_id: 1053, frequency: 1, labor_units: 0.5, part_units: 3.4, cost_per_unit: 5.50},
  {car_id: 4, maintenance_id: 1054, frequency: 5, labor_units: 1.2, part_units: 0.8, cost_per_unit: 8.0},
  {car_id: 5, maintenance_id: 1055, interval_mileage: 18000, interval_months: 6, frequency: 3, labor_units: 3.1, part_units: 0.4, cost_per_unit: 2.0},
  {car_id: 6, maintenance_id: 1056, interval_mileage: 5000, interval_months: 6, frequency: 6, labor_units: 0.8, part_units: 3.4, cost_per_unit: 12.0},
  {car_id: 1, maintenance_id: 1058, interval_months: 12, frequency: 7, labor_units: 2.1, part_units: 1.4, cost_per_unit: 11.50},
  {car_id: 2, maintenance_id: 1059, interval_months: 24, frequency: 8, labor_units: 1.4, part_units: 2.7, cost_per_unit: 6.50},
  {car_id: 3, maintenance_id: 1060, interval_months: 36, frequency: 9, labor_units: 0.0, part_units: 2.9, cost_per_unit: 8.0}])
  # {car_id: 1, maintenance_id: 1061, interval_mileage: 10000, interval_months: 6, frequency: 3, labor_units: 0.4, part_units: 5.2, cost_per_unit: 4.25},
  # {car_id: 1, maintenance_id: 1062, interval_mileage: 3500, frequency: 7, labor_units: 1.1, part_units: 0.9, cost_per_unit: 3.50},
  # {car_id: 1, maintenance_id: 1063, interval_mileage: 15000, interval_months: 6, frequency: 4, labor_units: 4.0, part_units: 0.0, cost_per_unit: 0.0},
  # {car_id: 1, maintenance_id: 1064, interval_months: 4, frequency: 4, labor_units: 2.0, part_units: 1.4, cost_per_unit: 8.0},
  # {car_id: 1, maintenance_id: 1065, interval_mileage: 5000, frequency: 4, labor_units: 2.4, part_units: 0.0, cost_per_unit: 0.0},
  # {car_id: 2, maintenance_id: 1057, interval_mileage: 15000, interval_months: 6, frequency: 4, labor_units: 2.0, part_units: 1.4, cost_per_unit: 8.0},
  # {car_id: 2, maintenance_id: 1052, interval_months: 6, frequency: 2, labor_units: 0.0, part_units: 2.4, cost_per_unit: 10.0},
  # {car_id: 2, maintenance_id: 1053, frequency: 1, labor_units: 0.5, part_units: 3.4, cost_per_unit: 5.50},
  # {car_id: 2, maintenance_id: 1054, frequency: 5, labor_units: 1.2, part_units: 0.8, cost_per_unit: 8.0},
  # {car_id: 2, maintenance_id: 1055, interval_mileage: 18000, interval_months: 6, frequency: 4, labor_units: 3.1, part_units: 0.4, cost_per_unit: 2.0},
  # {car_id: 2, maintenance_id: 1056, interval_mileage: 50, frequency: 1, labor_units: 0.8, part_units: 3.4, cost_per_unit: 12.0},
  # {car_id: 2, maintenance_id: 1058, frequency: 6, labor_units: 2.1, part_units: 1.4, cost_per_unit: 11.50},
  # {car_id: 2, maintenance_id: 1059, interval_mileage: 4000, frequency: 4, labor_units: 1.4, part_units: 2.7, cost_per_unit: 6.50},
  # {car_id: 2, maintenance_id: 1060, interval_months: 3, frequency: 4, labor_units: 0.0, part_units: 2.9, cost_per_unit: 8.0},
  # {car_id: 2, maintenance_id: 1061, interval_mileage: 10000, interval_months: 6, frequency: 3, labor_units: 0.4, part_units: 5.2, cost_per_unit: 4.25},
  # {car_id: 2, maintenance_id: 1062, interval_mileage: 3500, frequency: 7, labor_units: 1.1, part_units: 0.9, cost_per_unit: 3.50},
  # {car_id: 2, maintenance_id: 1063, interval_mileage: 15000, interval_months: 6, frequency: 4, labor_units: 4.0, part_units: 0.0, cost_per_unit: 0.0},
  # {car_id: 2, maintenance_id: 1064, interval_months: 4, frequency: 4, labor_units: 2.0, part_units: 1.4, cost_per_unit: 8.0},
  # {car_id: 2, maintenance_id: 1065, interval_mileage: 5000, frequency: 4, labor_units: 2.4, part_units: 0.0, cost_per_unit: 0.0}])

# Car.all.each do |car|
  # issue HTTP request to get car photo
  # save car photo url on car record
end
