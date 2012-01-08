class AddThingIdToDatum < ActiveRecord::Migration
  def self.up
    add_column :data, :thing_id, :integer
  end

  def self.down
    remove_column :data, :thing_id
  end
end
