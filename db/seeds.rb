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

cars_attrs = [
  {brand: 'Audi', model: 'A8', nicename: 'a8', year: 2014, style_id: 200480475, mpg: 23, fuel_type: 'Regular',fuel_capacity: 20, price: 30000},
  {brand: 'Jeep', model: 'Cherokee', nicename: 'cherokee', year: 2014, style_id: 200462904, mpg: 28, fuel_type: 'Midgrade', fuel_capacity: 25, price: 35000},
  {brand: 'Acura', model: 'MDX', nicename: 'mdx', year: 2014, style_id: 200476885, mpg: 32, fuel_type: 'Premium', fuel_capacity: 17, price: 32000},
  {brand: 'Toyota', model: 'Prius-C', nicename: 'prius-c', year: 2014, style_id: 200496064, mpg: 35, fuel_type: 'Premium', fuel_capacity: 22, price: 26000},
  {brand: 'Honda', model: 'Accord', nicename: 'accord', year: 2014, style_id: 200487199, mpg: 21, fuel_type: 'Midgrade', fuel_capacity: 28, price: 28000},
  {brand: 'BMW', model: '6-Series', nicename: '6-series', year: 2014, style_id: 200470634, mpg: 18, fuel_type: 'Diesel', fuel_capacity: 25, price: 31000}
]

cars_attrs.each do |car_attrs|
  Car.find_or_create_by(car_attrs)
end

maintenance_attrs = [
  {car_id: 1, maintenance_id: 1057, interval_mileage: 15000, frequency: 4, labor_units: 2.0, part_units: 1.4, cost_per_unit: 8.0},
  {car_id: 1, maintenance_id: 1052, interval_months: 6, frequency: 2, labor_units: 0.0, part_units: 2.4, cost_per_unit: 10.0},
  {car_id: 1, maintenance_id: 1053, frequency: 1, labor_units: 0.5, part_units: 3.4, cost_per_unit: 5.50},
  {car_id: 1, maintenance_id: 1054, frequency: 5, labor_units: 1.2, part_units: 0.8, cost_per_unit: 8.0},
  {car_id: 2, maintenance_id: 1055, interval_mileage: 18000, interval_months: 6, frequency: 3, labor_units: 3.1, part_units: 0.4, cost_per_unit: 2.0},
  {car_id: 2, maintenance_id: 1056, interval_mileage: 5000, interval_months: 6, frequency: 6, labor_units: 0.8, part_units: 3.4, cost_per_unit: 12.0},
  {car_id: 2, maintenance_id: 1058, interval_months: 12, frequency: 7, labor_units: 2.1, part_units: 1.4, cost_per_unit: 11.50},
  {car_id: 2, maintenance_id: 1059, interval_months: 24, frequency: 8, labor_units: 1.4, part_units: 2.7, cost_per_unit: 6.50},
  {car_id: 2, maintenance_id: 1060, interval_months: 36, frequency: 9, labor_units: 0.0, part_units: 2.9, cost_per_unit: 8.0},
  {car_id: 3, maintenance_id: 1061, interval_mileage: 10000, interval_months: 6, frequency: 3, labor_units: 0.4, part_units: 5.2, cost_per_unit: 4.25},
  {car_id: 3, maintenance_id: 1062, interval_mileage: 3500, frequency: 7, labor_units: 1.1, part_units: 0.9, cost_per_unit: 3.50},
  {car_id: 3, maintenance_id: 1063, interval_mileage: 15000, interval_months: 6, frequency: 4, labor_units: 4.0, part_units: 0.0, cost_per_unit: 0.0},
  {car_id: 3, maintenance_id: 1064, interval_months: 4, frequency: 4, labor_units: 2.0, part_units: 1.4, cost_per_unit: 8.0},
  {car_id: 4, maintenance_id: 1065, interval_mileage: 5000, frequency: 4, labor_units: 2.4, part_units: 0.0, cost_per_unit: 0.0},
  {car_id: 4, maintenance_id: 1057, interval_mileage: 15000, interval_months: 6, frequency: 4, labor_units: 2.0, part_units: 1.4, cost_per_unit: 8.0},
  {car_id: 4, maintenance_id: 1052, interval_months: 6, frequency: 2, labor_units: 0.0, part_units: 2.4, cost_per_unit: 10.0},
  {car_id: 4, maintenance_id: 1053, frequency: 1, labor_units: 0.5, part_units: 3.4, cost_per_unit: 5.50},
  {car_id: 4, maintenance_id: 1054, frequency: 5, labor_units: 1.2, part_units: 0.8, cost_per_unit: 8.0},
  {car_id: 5, maintenance_id: 1055, interval_mileage: 18000, interval_months: 6, frequency: 4, labor_units: 3.1, part_units: 0.4, cost_per_unit: 2.0},
  {car_id: 5, maintenance_id: 1056, interval_mileage: 50, frequency: 1, labor_units: 0.8, part_units: 3.4, cost_per_unit: 12.0},
  {car_id: 5, maintenance_id: 1058, frequency: 6, labor_units: 2.1, part_units: 1.4, cost_per_unit: 11.50},
  {car_id: 5, maintenance_id: 1059, interval_mileage: 4000, frequency: 4, labor_units: 1.4, part_units: 2.7, cost_per_unit: 6.50},
  {car_id: 5, maintenance_id: 1060, interval_months: 3, frequency: 4, labor_units: 0.0, part_units: 2.9, cost_per_unit: 8.0},
  {car_id: 6, maintenance_id: 1061, interval_mileage: 10000, interval_months: 6, frequency: 3, labor_units: 0.4, part_units: 5.2, cost_per_unit: 4.25},
  {car_id: 6, maintenance_id: 1062, interval_mileage: 3500, frequency: 7, labor_units: 1.1, part_units: 0.9, cost_per_unit: 3.50},
  {car_id: 6, maintenance_id: 1063, interval_mileage: 15000, interval_months: 6, frequency: 4, labor_units: 4.0, part_units: 0.0, cost_per_unit: 0.0},
  {car_id: 6, maintenance_id: 1064, interval_months: 4, frequency: 4, labor_units: 2.0, part_units: 1.4, cost_per_unit: 8.0},
  {car_id: 3, maintenance_id: 1065, interval_mileage: 5000, frequency: 4, labor_units: 2.4, part_units: 0.0, cost_per_unit: 0.0}
]

maintenance_attrs.each do |maintenance|
  Maintenance.find_or_create_by(maintenance)
end

# Car.all.each do |car|
#   photos = HTTParty.get("https://api.edmunds.com/v1/api/vehiclephoto/service/findphotosbystyleid?styleId=#{car[:style_id]}&fmt=json&api_key=#{ENV['EDMUNDS_API_KEY']}")

#   photos[0]["photoSrcs"].to_a.each do |pic|
#     CarPhoto.find_or_create_by(car: car, car_pic: "http://media.ed.edmunds-media.com" + pic)
#   end
# end

picture_attrs = [
{car_id: 1, car_pic: "http://images.caricos.com/a/audi/2014_audi_a8/images/1920x1080/2014_audi_a8_1_1920x1080.jpg"},
{car_id: 1, car_pic: "http://pictures.topspeed.com/IMG/crop/201306/2014-audi-a8-3_600x0w.jpg"},
{car_id: 1, car_pic: "http://www.autospocus.com/wp-content/uploads/2013/06/new-audi-a8-2014-7.jpg"},
{car_id: 1, car_pic: "http://1.bp.blogspot.com/-xMCUOppSHa8/UCGY_QdPh2I/AAAAAAAATVo/6crASUSs1LY/s1600/01.jpg" },
{car_id: 2, car_pic: "http://www.blogcdn.com/www.autoblog.com/media/2013/02/2014-jeep-cherokee-2-opt.jpg"},
{car_id: 2, car_pic: "http://www.thetorquereport.com/assets_c/2014/01/JP014_186CH-thumb-530xauto-32710.jpg"},
{car_id: 2, car_pic: "http://www.tflcar.com/wp-content/uploads/2013/12/9-2014-jeep-cherokee-fuel-economy_Upload.jpg"},
{car_id: 2, car_pic: "http://pictures.dealer.com/y/yarkchryslerjeepcllc/1641/331be7b10a0d028a01a7bd3b47a89d13.jpg"},
{car_id: 3, car_pic: "http://www.blogcdn.com/www.autoblog.com/media/2013/01/acura-mdx-concept-detroit.jpg"},
{car_id: 3, car_pic: "http://images.thecarconnection.com/sml/2014-acura-mdx-fwd-4-door-tech-pkg-angular-front-exterior-view_100443505_s.jpg"},
{car_id: 3, car_pic: "http://www.tflcar.com/wp-content/uploads/2013/12/2014-acura-mdx-grill-snow.jpg"},
{car_id: 3, car_pic: "http://assets.nydailynews.com/polopoly_fs/1.1724361!/img/httpImage/image.jpg_gen/derivatives/article_970/2014-acura-mdx.jpg"},
{car_id: 4, car_pic: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQX0k4TYAUi94gxoEjmfDj3Bhb4AQKhuXHGsmRKeGt9EOZmVUFP"},
{car_id: 4, car_pic: "http://www.chicagoautoshow.com/assets/1/23/VehicleRegularDimensionId/2013_Toyota_Prius_C_3_side.jpg"},
{car_id: 4, car_pic: "http://wallsbot.com/wp-content/uploads/2014/02/Toyota-Prius-C-Full-HD-Wallpaper.jpg"},
{car_id: 4, car_pic: "http://images.thecarconnection.com/lrg/toyota-prius-c-sports-concept-2013-tokyo-motor-show_100445583_l.jpg"},
{car_id: 5, car_pic: "http://automobiles.honda.com/images/2015/accord-sedan/exterior-gallery/2015-honda-accord-sedan-sport-exterior-side1.jpg"},
{car_id: 5, car_pic: "http://image.motortrend.com/f/auto_shows/detroit/2012/1112_2012_detroit_auto_show_2013_honda_accord_coupe_concept/39747399/honda-accord-coupe-concept.jpg"},
{car_id: 5, car_pic: "http://lundgrenhonda.com/media/models/66/2014-Honda-Accord-Coupe-Exterior-Front2.jpg"},
{car_id: 5, car_pic: "http://igalleriez.com/wp-content/uploads/2014/06/2014-honda-accord-hybrid-for-sale.jpg"},
{car_id: 6, car_pic: "http://cdn.automedia.com/images/articles/rts/rts20130701b6/00-2014-BMW-6-Series-driving.jpg"},
{car_id: 6, car_pic: "http://imganuncios.mitula.net/new_2014_bmw_6_series_650i_gran_coupe_98438674790475749.jpg"},
{car_id: 6, car_pic: "http://1.bp.blogspot.com/-ag_dQTu-URY/UoD_hOmfZ6I/AAAAAAAAL04/g_rPnLPQ0FY/s1600/BMW-6-Series-Cabriolet-by-Alpina-1.jpg"},
{car_id: 6, car_pic: "http://carsrelease2014-2015.com/wp-content/uploads/2014/04/001-2012-bmw-6-series-lede.jpg"},
]
picture_attrs.each do |picture|
  CarPhoto.find_or_create_by(picture)
end

Car.all.each do |c|
    if c.brand != "BMW"
  consumer_reviews = HTTParty.get("https://api.edmunds.com/api/vehiclereviews/v2/#{c["brand"].downcase}/#{c["model"].downcase}/#{c["year"]}?fmt=json&api_key=#{ENV['EDMUNDS_API_KEY']}")
    consumer_reviews["reviews"].to_a.each do |review|
      CarReview.create(car_id: c["id"], rating: consumer_reviews["averageRating"], title: review["title"], comment: review["text"])
    end
end
# Car.all.each do |car|
  # issue HTTP request to get car photo
  # save car photo url on car record

