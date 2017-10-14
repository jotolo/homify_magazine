class Article < ApplicationRecord
  validates_presence_of :title, :description
  belongs_to :user
  has_and_belong_to_many :tags
end
