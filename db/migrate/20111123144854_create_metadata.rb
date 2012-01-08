class CreateMetadata < ActiveRecord::Migration
  def self.up
    create_table :metadata do |t|
      t.string :name
      t.text :description
      t.integer :parent_id
      t.integer :data_type_id
      t.integer :default_values_id

      t.timestamps
    end
  end

  def self.down
    drop_table :metadata
  end
end
