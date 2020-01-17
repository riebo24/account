class BudgetsController < ApplicationController
  # before_action :set_category
  # 開始日が終了日より後でも登録可になっているので、改善したい。 

  def index
    @budgets = Budget.all
  end

  def show
    @budget = Budget.find(params[:id])

  end
  
  def new
    @budget = Budget.new  
    @monthly = Category.find(2) 

    end


  def create
    @budget = Budget.new(set_budget)
    # binding.pry
    if @budget.save
      redirect_to budgets_path
    else
      render :new
    end
  end

  def edit
    @budget = Budget.find(params[:id]).merge(user_id: current_user.id) 
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

      params.require(:budget).permit(:price, category_ids: []).merge(user_id: current_user.id)

    end

    # def set_category
    #   @monthly = @budget.category if @budget.category?
    # end

end
