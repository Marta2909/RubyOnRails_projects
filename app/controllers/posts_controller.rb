class PostsController < ApplicationController

  def index
    @posts = Post.order(created_at: :DESC).page(params[:page]).per(7)
    @lastcommentedposts =  Post.select('posts.*, max(comments.created_at) as last_commented_at').joins(:comments).group('posts.id').order('last_commented_at DESC').limit(5)
    @bestposts = Post.select('posts.*, count(comments.id) as comment_count').joins(:comments).group('posts.id').order('comment_count DESC').limit(5)
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @lastcommentedposts =  Post.select('posts.*, max(comments.created_at) as last_commented_at').joins(:comments).group('posts.id').order('last_commented_at DESC').limit(5)
    @bestposts = Post.select('posts.*, count(comments.id) as comment_count').joins(:comments).group('posts.id').order('comment_count DESC').limit(5)
  end

  def new
    @post = Post.new
    @post.comments_count = 0
  end

  def edit
  end

  def delete
  end

  def create

  end




end
