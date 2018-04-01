class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
      t.integer :venue_count
      t.string :name
      t.string :city
      t.string :state

      t.timestamps

    end
  end
end
