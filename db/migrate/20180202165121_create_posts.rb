class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.integer :author_id
      t.text :content
      t.string :title
      t.timestamps
    end
  end
end
