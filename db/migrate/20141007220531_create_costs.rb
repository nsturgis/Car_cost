class CreateCosts < ActiveRecord::Migration
  def change
    create_table :costs do |t|
      t.integer :car_id, null: false
      t.integer :down_payment, null: false
      t.float :interest_rate, null: false
      t.integer :time_horizon_in_years, null: false

      t.timestamps
    end
  end
end
