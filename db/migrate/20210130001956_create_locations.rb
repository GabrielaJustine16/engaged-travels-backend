class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
