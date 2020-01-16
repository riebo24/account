class BudgetsController < ApplicationController
  # 開始日が終了日より後でも登録可になっているので、改善したい。 

  def index
    @budgets = Budget.all
  end

  def new
    @budget = Budget.new   

    end


  def create
    @budget = Budget.new(set_budget)
    if @budget.save
      redirect_to budgets_path
    else
      render :new
    end
  end

  def edit
    @budget = Budget.find(params[:id])   
  end

  def update
    @budget = Budget.find(params[:id])   
    @budget.update(set_budget)
    redirect_to budgets_path
  end

  def destroy
    @budget = Budget.find(params[:id])
    @budget.destroy
    redirect_to budgets_path
    
  end

  private

    def set_budget
      params.require(:budget).permit(:price, :start_at, :finish_at)
    end

end
