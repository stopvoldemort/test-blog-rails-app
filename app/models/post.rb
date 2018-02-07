class Post < ApplicationRecord
  belongs_to :author
  has_many :comments

  def avg_stars
    sum = self.comments.reduce(0) do |sum, comment|
      sum + comment.stars
    end
    avg = sum.to_f / self.comments.length.to_f
    avg.round(1)
  end

  def rating_string
    if self.comments.length!=0
      "#{self.avg_stars} stars"
    else
      "No comments (yet)"
    end
  end

  def self.sorted_by_rating(posts)
    posts.sort { |a, b| b.avg_stars <=> a.avg_stars }
  end

  def self.filter(params)
    @posts = Post.all
    @posts = Post.filter_by_author(@posts, params[:author_id]) if !params[:author_id].empty?
    @posts = Post.search(@posts, params[:q]) if !params[:q].empty?
    @posts = Post.has_rating(@posts) if params[:has_rating].to_i == 1
    @posts = Post.rating_minimum(@posts, params[:rating_minimum]) if !params[:rating_minimum].empty?
    @posts
  end

  def self.filter_by_author(posts, author_id)
    posts.select { |post| post.author_id == author_id.to_i }
  end

  def self.search(posts, term)
    posts.select do |post|
      post.content.include?(term) || post.title.include?(term) || post.author.full_name.include?(term)
    end
  end

  def self.has_rating(posts)
    posts.select { |post| !post.comments.empty? }
  end

  def self.rating_minimum(posts, rating_minimum)
    posts.select { |post| post.avg_stars >= rating_minimum.to_f.round(1) }
  end

  def test_proc(input)
    return Proc.new{|x| input * x}
  end

end
