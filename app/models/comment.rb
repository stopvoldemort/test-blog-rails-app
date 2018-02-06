class Comment < ApplicationRecord
  belongs_to :post

  def processed_author_name
    if self.author_name.empty?
      self.author_name = "anonymous"
    else
      self.author_name
    end
  end


end
