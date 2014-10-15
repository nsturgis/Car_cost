class AddUserIdToCosts < ActiveRecord::Migration
  def change
    add_column :costs, :user_id, :integer, null: false
  end
end
