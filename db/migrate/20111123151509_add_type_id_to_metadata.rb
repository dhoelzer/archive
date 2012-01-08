class AddTypeIdToMetadata < ActiveRecord::Migration
  def self.up
    add_column :metadata, :type_id, :integer
  end

  def self.down
    remove_column :metadata, :type_id
  end
end
