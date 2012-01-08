class Datum < ActiveRecord::Base
  has_and_belongs_to_many :metadata
  belongs_to :thing

end
