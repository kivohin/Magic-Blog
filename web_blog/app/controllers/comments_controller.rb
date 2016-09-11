class CommentsController < ApplicationController
	before_action :require_user

	def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)

    if @comment.save
    	redirect_to post_path(@post)
    else
    	redirect_to '/'
    end
  end
 
  private
  
  def comment_params
    params.require(:comment).permit(:unique_id, :post_id, :content, :username)
  end
end
