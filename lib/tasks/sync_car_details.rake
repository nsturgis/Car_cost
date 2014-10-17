task sync_car_details: :environment do
  makes = File.read_lines(Rails.root.join("db/data/car_makes"))

  cars.each do |car|

    # check if we need to get more details
    # if so, query the api
    # build query string dynamically
    # take results, update car
  end
  # query api
end
