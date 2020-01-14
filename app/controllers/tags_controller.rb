class TagsController < ApplicationController
  def index
    
  end

  def new
    @tags = Tags.new   

    end


  def create
    @tag = Tag.new(set_tag)
    if @tag.save
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

    def set_tag
      params.require(:tag).permit(:name)
    end                                                                                                    
end
