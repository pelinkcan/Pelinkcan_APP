class CreateLinkTags < ActiveRecord::Migration[5.2]
  def change
    create_table :link_tags do |t|
      
      t.timestamps
    end
  end
end
