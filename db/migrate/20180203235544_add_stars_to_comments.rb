class AddStarsToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :stars, :integer
  end
end
