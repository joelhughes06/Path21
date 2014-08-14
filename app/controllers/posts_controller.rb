class PostsController < ApplicationController
	before_action :require_user, only: [:new, :create, :destroy]

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

	def record_a_vote  
	  post_id = params[:post_id]  
	  voter_ip = request.remote_ip  
	  voter_ip.post_id = post_id
	  unless Vote.count(:all, :conditions => ['post_id = ? AND voter_ip = ?', post_id, voter_ip]) == 0  
	    redirect_to :already_voted  
	  end  
	  
	  Post.find(post_id).record_vote(params[:post]) # Or however you count votes  
	  Vote.create(:post_id => post_id, :voter_ip => voter_ip)  
	end  
	  
	def already_voted  
	  render :text => "You can like a post only once."  
	end 	

end