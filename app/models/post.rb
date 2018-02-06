class Post < ApplicationRecord
  belongs_to :author
  has_many :comments

  def avg_stars
    self.comments.reduce(0) do |sum, comment|
      sum + comment.stars
    end
  end

  def rating_string
    if self.comments.length!=0
      "#{(self.avg_stars.to_f / self.comments.length.to_f).round(1)} stars"
    else
      "No comments (yet)"
    end
  end

  def self.sorted_by_rating(posts)
    posts.sort { |a, b| b.avg_stars <=> a.avg_stars }
  end

  def self.search(term)
    self.all.select do |post|
      post.content.include?(term) || post.title.include?(term)
    end
  end

end
