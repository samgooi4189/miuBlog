class PostsController < ApplicationController

	def new
		#to prevent nil in new.html
		@post = Post.new
	end

	def create
		#render text: params[:post].inspect
		@post = Post.new(post_params)
		if @post.save
			redirect_to @post
		else
			render 'new'
		end
	end

	def show
		@post = Post.find(params[:id])
	end

	def index
		@posts = Post.all
	end
	private
		def post_params
			params.require(:post).permit(:title, :text)
		end

end
