class RemoveBrandIdFromCars < ActiveRecord::Migration
  def up
    remove_column :cars, :brand_id
  end
  def down
    add_column :cars, :brand_id, :integer, null: false
  end
end
