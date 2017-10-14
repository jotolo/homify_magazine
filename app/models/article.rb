class Article < ApplicationRecord
  validates_presence_of :title, :description
  belongs_to :user
  has_and_belongs_to_many :tags
end
