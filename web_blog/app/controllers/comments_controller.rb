class CommentsController < ApplicationController
	before_action :require_user

	def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to posts_path(@post)
  end
 
  private
  
  def comment_params
    params.require(:comment).permit(:unique_id, :post_id, :content, :username)
  end
end
