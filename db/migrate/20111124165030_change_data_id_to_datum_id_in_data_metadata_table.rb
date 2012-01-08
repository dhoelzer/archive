class ChangeDataIdToDatumIdInDataMetadataTable < ActiveRecord::Migration
  def self.up
    rename_column :data_metadata, :data_id, :datum_id
    rename_column :data_metadata, :metadata_id, :metadatum_id
  end

  def self.down
    rename_column :data_metadata, :datum_id, :data_id
    rename_column :data_metadata, :metadatum_id, :metadata_id
  end
end
