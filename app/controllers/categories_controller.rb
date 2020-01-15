class CategoriesController < ApplicationController
  def index
    
  end

  def new
    @category = Category.new
  end

  def create

    @category = Category.new(set_category)
    @category[:budget_id] = 1
    @category[:user_id] = 1
    binding.pry

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
  end



  private
    def set_category

      params.require(:category).permit(:name)
    end
end
