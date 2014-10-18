class ChangeColumnConstraintsOnCars < ActiveRecord::Migration
   def up
    change_column :cars, :style_id, :integer
    change_column :cars, :fuel_type, :string
    change_column :cars, :price, :integer
    change_column :cars, :fuel_capacity, :integer
    change_column :cars, :mpg, :integer
  end

  def down
    change_column :cars, :style_id, :integer, null: false
    change_column :cars, :fuel_type, :string, null: false
    change_column :cars, :price, :integer, null: false
    change_column :cars, :fuel_capacity, :integer, null: false
    change_column :cars, :mpg, :integer, null: false
  end
end
