class DataToMetadata < ActiveRecord::Migration
  def self.up
    create_table :data_metadata, :id => false do |t|
      t.integer :data_id
      t.integer :metadata_id
    end
  end

  def self.down
    drop_table :data_metadata
  end
end
