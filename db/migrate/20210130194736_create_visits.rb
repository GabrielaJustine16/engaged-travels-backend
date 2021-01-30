class CreateVisits < ActiveRecord::Migration[6.1]
  def change
    create_table :visits do |t|
      t.integer :trip_id
      t.integer :attraction_id
      t.date :date

      t.timestamps
    end
  end
end
