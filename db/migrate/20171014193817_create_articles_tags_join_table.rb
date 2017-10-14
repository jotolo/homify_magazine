class CreateArticlesTagsJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table(:article, :tag)
  end
end
