class ChangeZipcodeToString < ActiveRecord::Migration
  def change
    change_column :users, :zipcode, :string, null: false
  end
end
