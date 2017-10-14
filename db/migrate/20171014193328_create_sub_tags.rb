class CreateSubTags < ActiveRecord::Migration[5.1]
  def change
    create_table :sub_tags do |t|
      t.string :name,         null: false
      t.integer :tag_id,      null: false

      t.timestamps
    end
  end
end
