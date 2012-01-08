class CreateThings < ActiveRecord::Migration
  def self.up
    create_table :things do |t|
      t.integer :type_id
      t.integer :parent_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :things
  end
end
