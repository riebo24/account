class IncomesController < ApplicationController

  def index
    @incomes = Income.all
  end

  def new
    @income = Income.new
  end

  def create
    @income = Income.new(set_income)
    if @income.save
      redirect_to incomes_path
    else
      render :new
    end
  end

  def edit
    @income = Income.find(1)
  end

  def update
    @income = Income.find(params[:id])   
    @income.update(set_income)
    redirect_to incomes_path
  end

  def destroy
    @income = Income.find(params[:id])
    @income.destroy
    redirect_to incomes_path    
  end

  private
    def set_income
      params.require(:income).permit(:name).merge(user_id: current_user.id)
    end
end
