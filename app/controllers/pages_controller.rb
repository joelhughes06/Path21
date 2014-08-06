class PagesController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		@comment = Comment.new
	end
	def new
		@post = Post.find(params[:post_id])
		@comment = Comment.new
	end
end