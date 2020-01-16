class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def new
    @tag = Tag.new
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
    @tag = Tag.find(params[:id])    
  end

  def update
    @tag = Tag.find(params[:id])   
    @tag.update(set_tag)
    redirect_to tags_path
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to tags_path    
  end

  private

    def set_tag
      params.require(:tag).permit(:name)
    end                                                                                                    
end
