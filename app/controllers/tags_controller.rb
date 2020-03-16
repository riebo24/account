# frozen_string_literal: true

class TagsController < ApplicationController
  def index
    @tags = current_user.tags
  end

  def show
    @tags = current_user.tags.find(params[:id])
    @monthlies = current_user.monthlies.order(start_at: :desc)
    @posts = @tags.posts.order(date: :asc) # showアクションに遷移した際に、最初に表示されるテーブルのposts
    @sum = @posts.sum(:p_price) # postsの合計値

    @search_monthly = Monthly.find_by(start_at: params[:start_at])
    # 検索値（params[:start_at]）を利用して、該当するmonthliesを検索

    unless @search_monthly.nil?
      # @search_monthlyが空のとき、エラーを回避するため、条件分岐
      # 検索前（showアクションに遷移した直後）や、検索結果が0のときは、@search_monthlyは空になる。
      @search_posts = current_user.posts.order(date: :asc).where(date: @search_monthly.start_at..@search_monthly.finish_at)
      respond_to do |format|
        format.html
        format.json
      end
    end
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(set_tag)
    if @tag.save
      redirect_to tags_path
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
    params.require(:tag).permit(:name).merge(user_id: current_user.id)
  end

  def set_search_date
    params.permit(:start_at)
  end
end
