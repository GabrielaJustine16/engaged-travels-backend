class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.date :start_date
      t.date :end_date
      t.integer :location_id
      t.integer :user_id
      t.string :name

      t.timestamps
    end
  end
end
