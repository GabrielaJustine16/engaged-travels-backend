class CreateAttractions < ActiveRecord::Migration[6.1]
  def change
    create_table :attractions do |t|
      t.string :name
      t.string :description
      t.integer :location_id

      t.timestamps
    end
  end
end
