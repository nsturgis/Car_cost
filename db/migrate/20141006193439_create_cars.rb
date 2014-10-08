class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :brand_id, null: false
      t.string :brand, null: false
      t.string :model, null: false
      t.string :nicename, null: false
      t.integer :year, null: false
      t.integer :style_id, null: false
      t.integer :MPG, null: false
      t.string :fuel_type, null: false
      t.integer :price, null: false

      t.timestamps
    end
  end
end
