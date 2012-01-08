class CreateTypes < ActiveRecord::Migration
  def self.up
    create_table :types do |t|
      t.string :name
      t.text :description
      t.integer :parent_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :types
  end
end
