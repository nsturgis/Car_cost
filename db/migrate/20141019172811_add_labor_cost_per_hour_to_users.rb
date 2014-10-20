class AddLaborCostPerHourToUsers < ActiveRecord::Migration
  def change
    add_column :users, :labor_cost_per_hour, :integer
  end
end
