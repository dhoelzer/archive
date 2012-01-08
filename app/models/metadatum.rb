class Metadatum < ActiveRecord::Base
  belongs_to :type
  has_many :data_types
  has_and_belongs_to_many :data
end
