class PostsController < ApplicationController
	before_action :require_user, except: [:index, :show]

	def index
		@posts = Post.all.order('created_at DESC')
	end

	def new
		@post = Post.new
		@unique_id = SecureRandom.uuid
	end

	def create
		@post = Post.new(post_params)

		if @post.save
			flash[:notice] = "Successfully created post!"
			redirect_to @post
		else
			flash[:alert] = "Error creating post!"
			render 'new'
		end
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])

		if @post.update(params[:post].permit(:title, :content))
			flash[:notice] = "Successfully updated post!"
			redirect_to @post
		else
			flash[:alert] = "Error updating post!"
			render 'edit'
		end
	end

	def destroy
		@post = Post.find(params[:id])
		if @post.destroy
			flash[:notice] = "Successfully deleted post!"
			redirect_to posts_path
		else
			flash[:alert] = "Error deleting post!"
		end
	end

	private

	def post_params
		params.require(:post).permit(:unique_id, :title, :content, :username)
	end
end
