class CreateLinkTags < ActiveRecord::Migration[5.2]
  def change
    create_table :link_tags do |t|
      t.integer :tag_id
      t.integer :link_id
      
      t.timestamps
    end
  end
end
