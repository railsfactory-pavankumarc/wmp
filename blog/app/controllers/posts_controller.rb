class PostsController < ApplicationController
def index
@posts = Post.all
end
def show
@posts = Post.find(params[:id])
end
def new
	@posts = Post.new
end
def create
	 @posts = Post.new(params[:post].permit('title','content'))
	if @posts.save
		redirect_to posts_path, :notice => "your post was saved"
	else
		render "new"
	end
end

def edit
@posts = Post.find(params[:id])	
end

def update
@posts = Post.find(params[:id])
	if @posts.update_attributes(params[:post].permit('title','content'))
		redirect_to posts_path, :notice => "your post has been updated"
		else
			render "edit"
	end

end
def destroy
@posts = Post.find(params[:id])
@posts.destroy
redirect_to posts_path, :notice => "your post has been deleted"
end
end
