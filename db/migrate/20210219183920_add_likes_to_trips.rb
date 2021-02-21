class AddLikesToTrips < ActiveRecord::Migration[6.1]
  def change
    add_column :trips, :likes, :integer
  end
end
