class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.integer :sharable_id
      t.string :sharable_type
      t.integer :user_id

      t.timestamps
    end
    add_index :sharable_id
    add_index :user_id
    add_index :sharable_type
  end
end
