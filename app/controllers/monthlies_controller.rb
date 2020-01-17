class MonthliesController < ApplicationController
  def index
    @monthly = Monthly.all.limit(100)   
  end

  def new
    @monthly = Monthly.new
    @monthly.budgets.build

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
    @monthly.update(set_post)
    redirect_to monthlies_path
  end

  def destroy
    @monthly = Monthly.find(params[:id])
    @monthly.destroy
    redirect_to monthlies_path
    
  end

  private

    def set_monthly
      params.require(:monthly).permit(:price, :start_at, :finish_at, budgets_attributes:[:id, :price]).merge(user_id: current_user.id)
    end
end
