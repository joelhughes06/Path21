class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create 
		@post = Post.new[params.require(:post).permit(:title, :description, :category)]
		if @post.save && user_lookup
			flash[:notice] = "Thanks for your comment! It will appear shortly."
			redirect_to_root_path
		else
			render 'new'
		end
	end

	def user_lookup
		@ip = request.remote_ip
		@ip = request.env['REMOTE_ADDR']
		@email = Post.find[params[:email]]
	end

end