class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :user_id
      t.integer :attraction_id

      t.timestamps
    end
  end
end
