class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :address
      t.string :venue_name
      t.integer :neighborhood_id
      t.integer :bookmark_count

      t.timestamps

    end
  end
end
