class CommentsController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    comment = Comment.new(comment_params)
    comment.author = current_user
    comment.post = post
    if comment.save
      flash[:success] = 'Comment created successfully'
    else
      flash[:error] = 'Comment not created'
    end
    redirect_to user_post_path(current_user, post)
  end

  def new
    @comment = Comment.new
    @post = Post.find(params[:post_id])
  end

  def destroy
    comment = Comment.find(params[:id])
    post = comment.post_id
    user_post = comment.author_id
    return unless comment.destroy

    redirect_to user_post_path(user_post, post)
    flash[:success] = 'Comment deleted successfully'
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
