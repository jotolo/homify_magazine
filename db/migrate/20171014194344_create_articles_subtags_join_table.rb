class CreateArticlesSubtagsJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table(:articles, :sub_tags)
  end
end
