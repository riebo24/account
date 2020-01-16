class PostsController < ApplicationController
  def index
    @posts = Post.all.limit(100)   
  end

  def new
    @post = Post.new   
  end

  def create
    @post = Post.new(set_post)
    if @post.save 
      redirect_to root_path
    else
      render :new
    end
   end


  def edit
    @post = Post.find(params[:id])    
  end

  def update
    @post = Post.find(params[:id])   
    @post.update(set_post)
    redirect_to posts_path
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
    
  end

  private

    def set_post
      params.require(:post).permit(:price, :memo).merge(user_id: current_user.id)
    end
end
