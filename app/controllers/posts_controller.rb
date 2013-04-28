class PostsController < ApplicationController
  def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
		# @comment = Comment.new
		# @comment.post_id = @post.id
	end
end
