class CommentsController < ApplicationController

	def create
		@post = Post.find(params[:post_id])
		@comment = Comment.new(params.require(:comment).permit!)
		if @comment.save
			flash[:notice] = "Your comment will appear shortly."
			redirect_to root_path
		else
			render :new
		end
	end

	def new
		@post = Post.find(params[:post_id])
		@comment = Comment.new
	end

	def index
	end

	def ip_request
		@ip = request.remote_ip
		@ip = request.env['REMOTE_ADDR']
	end

end