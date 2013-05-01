class PostsController < ApplicationController
  def index
		@posts = Post.all
	end

	def show
		@sidebar_posts = Post.find(:all, :order => "RANDOM()", :limit => 12)
		@post = Post.find(params[:id])
		@picture = @post.picture_from_url(@post.image_url)
		# @comment = Comment.new
		# @comment.post_id = @post.id
	end
end
