class SubTag < ApplicationRecord
  validates_presence_of :name, :sub_tag_id
  belongs_to :tag
end
