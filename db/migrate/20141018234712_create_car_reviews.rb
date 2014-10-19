class CreateCarReviews < ActiveRecord::Migration
  def change
    create_table :car_reviews do |t|
      t.integer :car_id, null: false
      t.float :rating
      t.string :title
      t.text :comment

    end
  end
end
