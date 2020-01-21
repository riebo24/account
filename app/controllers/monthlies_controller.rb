class MonthliesController < ApplicationController
  # before_action :set_post, only: :show  showアクションんに入れた

  def index
    @monthly = current_user.monthlies.limit(100)   
  end

  def show
    @monthly = Monthly.find(params[:id])
    @posts = current_user.posts.where(date: @monthly.start_at..@monthly.finish_at)       
  end

  def new
<<<<<<< Updated upstream
    @monthly = Monthly.new   
    @budget = @monthly.budgets.build
=======
    @monthly = Monthly.new
    @monthly.budgets.new

>>>>>>> Stashed changes
  end

  def create
    @monthly = Monthly.new(set_monthly)
    if @monthly.save 
      redirect_to monthlies_path
    else
      render :new
    end
  end


  def edit
    @monthly = Monthly.find(params[:id])    
  end

  def update
    @monthly = Monthly.find(params[:id])   
    @monthly.update(set_monthly)
    redirect_to monthlies_path
  end

  def destroy
    @monthly = Monthly.find(params[:id])
    @monthly.destroy
    redirect_to monthlies_path
  end

  private

    def set_monthly
<<<<<<< Updated upstream
      # binding.pry
      params.require(:monthly).permit(:price, :start_at, :finish_at, address_attributes:[:id, :price]).merge(user_id: current_user.id)
=======
      params.require(:monthly).permit(:start_at, :finish_at, budgets_attributes:[:id, :price, :category_id]).merge(user_id: current_user.id)
>>>>>>> Stashed changes
    end

    # def set_post

    # end

end
