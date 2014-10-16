class CreateLaborCosts < ActiveRecord::Migration
  def change
    create_table :labor_costs do |t|
      t.integer :zipcode, null: false
      t.float :labor_cost, null: false
    end
  end
end
