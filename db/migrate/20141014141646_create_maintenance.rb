class CreateMaintenance < ActiveRecord::Migration
  def change
    create_table :maintenances do |t|
      t.integer :car_id, null: false
      t.integer :maintenance_id, null: false
      t.float :interval_mileage
      t.float :interval_months
      t.integer :frequency, null: false
      t.float :labor_units
      t.float :part_units
      t.float :cost_per_unit
    end
  end
end
