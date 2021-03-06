require 'pry'
class Author


  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    self.posts << post
    # binding.pry
    post.author = self
  end

  def add_post_by_title(title)
      post = Post.new(title)
      post.author = self
      @posts << post
  end

  def self.post_count
    Post.all.count
  end

end
