class SubTag < ApplicationRecord
  validates_presence_of :name, :tag_id
  belongs_to :tag
  has_and_belongs_to_many :articles
end
