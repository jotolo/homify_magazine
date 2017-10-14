class Article < ApplicationRecord
  validates_presence_of :title, :description
  belongs_to :user
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :sub_tags

  def self.like(filter)
    result = []
    Article.all.each do |article|
      result << article.id if article.match?(filter)
    end
    Article.where(id: result)
  end

  def match?(filter)
        self.title.downcase.include?(filter) ||
        self.description.downcase.include?(filter) ||
        (self.try(:user).try(:name) && self.try(:user).try(:name).downcase.include?(filter)) ||
        self.tags.any?{|t|t.name.include?(filter)} ||
        self.sub_tags.any?{|st| st.name.include?(filter)}
  end
end
