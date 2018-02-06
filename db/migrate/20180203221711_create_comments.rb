class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :title
      t.text :content
      t.integer :post_id
      t.string :author_name
      t.timestamps
    end
  end
end
