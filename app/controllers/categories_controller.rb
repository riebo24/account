class CategoriesController < ApplicationController
  def index
    
  end

  def new
    @category = Category.new
  end

  def create
    # binding.pry
    @category = Category.new(set_category)
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
