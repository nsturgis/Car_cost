class AddFuelCapacityToCars < ActiveRecord::Migration
  def change
    add_column :cars, :fuel_capacity, :integer, null: false
  end
end
