class MonthliesController < ApplicationController
  def index
    @monthly = Monthly.all.limit(100)   
  end

  def new
    @monthly = Monthly.new   
    @budget = @monthly.budgets.build
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
      # binding.pry
      params.require(:monthly).permit(:price, :start_at, :finish_at, address_attributes:[:id, :price]).merge(user_id: current_user.id)
    end
end
