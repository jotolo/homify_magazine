class Tag < ApplicationRecord
  validates_presence_of :name
  has_many :sub_tags
  has_and_belong_to_many :articles
end
