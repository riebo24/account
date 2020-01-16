class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create

    @category = Category.new(set_category)
    @category[:budget_id] = 1
    @category[:user_id] = 1
    if @category.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @category = Category.find(1)
  end

  def update
    @category = Category.find(params[:id])   
    @category.update(set_category)
    redirect_to categories_path
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path    
  end

  private
    def set_category
      params.require(:category).permit(:name)
    end
end
