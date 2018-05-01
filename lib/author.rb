require 'pry'


class Author
  @@post_count = 0
  attr_accessor :name, :posts, :post

  def initialize(name, posts=[])
    @name = name
    @posts = posts

  end

  def self.post_count
    @@post_count
  end

  def add_post(post)
    @post = post

    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    @post = Post.new(title)
    @posts << title
    @post.author_name
    @@post_count += 1
  end


end
