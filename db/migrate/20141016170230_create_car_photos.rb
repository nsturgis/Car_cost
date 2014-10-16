class CreateCarPhotos < ActiveRecord::Migration
  def change
    create_table :car_photos do |t|
      t.integer :car_id, null: false
      t.string :car_pic, null: false
    end
  end
end
