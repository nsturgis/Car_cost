class RemoveLaborCosts < ActiveRecord::Migration
  def up
    drop_table :labor_costs
  end

  def down
    create_table :labor_costs do |t|
    t.integer :zipcode, null: false
    t.float :labor_cost, null: false
  end
end
end
