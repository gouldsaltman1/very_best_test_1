class CreateCuisines < ActiveRecord::Migration
  def change
    create_table :cuisines do |t|
      t.string :name
      t.integer :dish_count

      t.timestamps

    end
  end
end
