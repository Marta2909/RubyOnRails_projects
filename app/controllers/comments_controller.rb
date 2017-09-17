class CommentsController < ApplicationController
  def new

  end

  def create
    @post = Post.find params[:post_id]
    @comment = @post.comments.new(comment_params)
    if @comment.save
      redirect_to post_path(@post.id)
    end
  end



  def edit
  end

  def update
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :body, :email, :comments_count)
  end

end
