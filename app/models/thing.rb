class Thing < ActiveRecord::Base
  has_many :data
  belongs_to :type
  
  def collection_type_name_display
    return "Thing: #{self.id} - #{self.type.name}"
  end
end
