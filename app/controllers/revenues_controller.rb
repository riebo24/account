class RevenuesController < ApplicationController
  def index
    @revenues = current_user.revenues.order(date: :ASC)
  end

  def show
    @revenue = Revenue.find(params[:id])    
  end

  def new
    @revenue = Revenue.new   
  end

  def create
    @revenue = Revenue.new(set_revenue)
    if @revenue.save 
      redirect_to revenues_path
    else
      render :new
    end
   end


  def edit
    @revenue = Revenue.find(params[:id])    
  end

  def update
    @revenue = Revenue.find(params[:id])   
    @revenue.update(set_revenue)
    redirect_to revenues_path
  end

  def destroy
    @revenue = Revenue.find(params[:id])
    @revenue.destroy
    redirect_to revenues_path   
  end

  private

    def set_revenue
      params.require(:revenue).permit(:p_price, :memo, :date, :category_id, tag_ids:[]).merge(user_id: current_user.id)
    end
end
