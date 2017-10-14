class SubTag < ApplicationRecord
  validates_presence_of :name, :tag_id
  belongs_to :tag
end
