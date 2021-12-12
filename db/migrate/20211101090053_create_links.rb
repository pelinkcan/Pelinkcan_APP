class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.integer :user_id
      t.string :url
      t.string :title
      t.string :body
      t.string :color
      t.timestamps
    end
  end
end
