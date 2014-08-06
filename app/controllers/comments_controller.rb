class CommentsController < ApplicationController

	def create
#		@post = Post.find(params[:post_id])
		@comment = Comment.new #[params.require(:comment)]
	end

	def new
#		@post = Post.find(params[:post_id])
		@comment = Comment.new # [params.require(:comment)]
	end

end