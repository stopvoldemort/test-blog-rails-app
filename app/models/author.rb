class Author < ApplicationRecord
  has_many :posts

  def full_name
    self.first_name.capitalize + " " + self.last_name.capitalize
  end
end
