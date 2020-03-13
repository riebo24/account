class PostsController < ApplicationController
  def index
    @posts = current_user.posts.order(date: :ASC)
    @revenues = current_user.revenues.order(date: :ASC)
    # @posts_fo_calender = @posts.group(:date).sum(:p_price)
    # @keys = @posts_fo_calender.keys.map{|k| ["title", k]}.to_h
    # @values = @posts_fo_calender.values.map{|v| ["date", v]}.to_h
    # @hash = @keys.merge(@values) 
    # binding.pry
  end

  def show
    @post = Post.find(params[:id])    
  end

  def new
    @post = Post.new  
    @revenue = Revenue.new  
  end

  def create
    @post = Post.new(set_post)
    if @post.save 
      redirect_to posts_path
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
      params.require(:post).permit(:p_price, :memo, :date, :category_id, tag_ids:[]).merge(user_id: current_user.id)
    end
end
