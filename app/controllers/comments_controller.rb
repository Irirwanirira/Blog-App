class CommentsController < ApplicationController
  def index
    @commment = Comment.new
    @user = current_user
  end

  def create
    user = current_user
    post = Post.find(params[:id] || params[:post_id])
    comment = Comment.new(comment_params)
    comment.post = post
    if comment.save
      redirect_to user_posts_url(id: post.id)
    else
      redirect_to new_user_post_comment_url(post_id: post.id, user_id: user.id)
    end
  end

  def comment_params
    params.require(:comment).permit(:Text)
  end
end
