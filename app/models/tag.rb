class Tag < ApplicationRecord
  validates_presence_of :name
  has_many :sub_tags
end
