class AddZipcodeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :zipcode, :integer, null: false
  end
end
