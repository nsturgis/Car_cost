class RemoveMpgAndAddMpgToCars < ActiveRecord::Migration
  def up
    remove_column :cars, :MPG
    add_column :cars, :mpg, :integer, null: false
  end
  def down
    add_column :cars, :MPG, :integer, null: false
    remove_column :cars, :mpg
  end
end
