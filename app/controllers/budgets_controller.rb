class BudgetsController < ApplicationController
  def index
    
  end

  def new
    @budget = Budget.new   

    end


  def create
    @budget = Budget.new(set_budget)
    if @budget.save
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

    def set_budget
      params.require(:budget).permit(:price, :start_at, :finish_at)
    end

end
