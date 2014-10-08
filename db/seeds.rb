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
car = Car.create([{brand_id: 1, brand: 'audi', model: 'A8', nicename: 'a8', year: 2014, style_id: 456, MPG: 45, fuel_type: 'gas',fuel_capacity: 20, price: 23000},
{brand_id: 2, brand: 'jeep', model: '5C', nicename: '5c', year: 2014, style_id: 459, MPG: 45, fuel_type: 'electric', fuel_capacity: 25, price: 35000},
{brand_id: 3, brand: 'acura', model: 'AX', nicename: 'ax', year: 2014, style_id: 458, MPG: 45, fuel_type: 'hybrid', fuel_capacity: 17, price: 32000},
{brand_id: 4, brand: 'toyota', model: 'T8', nicename: 't8', year: 2014, style_id: 455, MPG: 45, fuel_type: 'Natural-gas-cng', fuel_capacity: 22, price: 28000},
{brand_id: 5, brand: 'honda', model: 'accord', nicename: 'accord', year: 2014, style_id: 453, MPG: 45, fuel_type: 'Flex-fuel-ffv', fuel_capacity: 28, price: 30000},
{brand_id: 6, brand: 'bmw', model: '6 series', nicename: '6 series', year: 2014, style_id: 450, MPG: 45, fuel_type: 'diesel', fuel_capacity: 25, price: 29000}])
