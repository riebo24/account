class PostsController < ApplicationController
  def index
    @posts = Post.all.limit(100)
    
  end

  def new
    @post = Post.new   
  end


  # def create
  #   @post = Post.new(set_post)
 
  #   if @post.save
  #     redirect_to root_path
  #   else
  #     # binding.pry   
  #     render :new
  #   end
  # end


  def create
    @post = Post.new(set_post)
    binding.pry
    if @post.save 
      redirect_to root_path
    else

      render :new
    end
   end


  def edit
    
  end

  def update
    
  end

  private

    def set_post

      params.require(:post).permit(:price, :memo)

    end

end
