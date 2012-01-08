class Type < ActiveRecord::Base
  has_many :metadata
  has_many :things
end
