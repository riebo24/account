# frozen_string_literal: true

class MonthliesController < ApplicationController
  # before_action :set_post, only: :show  showアクションんに入れた

  def index
    @monthlies = current_user.monthlies.order(start_at: :ASC)
    # @posts = current_user.posts.where(date: @monthlies.start_at..@monthlies.finish_at)
    # @post = @posts.map{|p| p.sum(p_price)}
  end

  def show
    @monthly = Monthly.find(params[:id])
    @categories = current_user.categories
    @budgets = @monthly.budgets # monthliesに紐づいている予算
    @posts = current_user.posts.where(date: @monthly.start_at..@monthly.finish_at)
    # monthliesに設定されている期間内に投稿されたpostsを抽出

    # 円グラフ表示用ハッシュの作成
    @posts_price = @posts.group(:category_id).sum(:p_price)
    @category_name = @posts_price.keys.map { |k| @categories.find(k).name } # @posts_priceのkey(category_id)をカテゴリ名に変更
    @price_sum = @posts_price.values.sum # @posts_priceの値の合計値
    @price_percentage = @posts_price.values.map { |k| k * 100 / @price_sum } # カテゴリー別の使用額のパーセンテージを算出
    @hash_for_pie_chart = Hash[@category_name.zip @price_percentage] # キーが@category_name、バリューが@price_percentageのハッシュを作成

    @tags = current_user.tags

    # @posts :@monthliesの期間の間に作成したpostを抽出(where)。category_id毎の新たなハッシュを作る（group_by）。その中から、２番目と最後[1..-1]を抽出する。それを配列の最初[0]に加える。最後のv[0]は不明。
    # @posts = current_user.posts.where(date: @monthly.start_at..@monthly.finish_at).group_by{ |i| i[:category_id]}.map{ |k, v| v[1..-1].each {|x| v[0][:p_price] += x[:p_price]}
    # v[0]}
    # @data= @categories.name
  end

  def new
    @monthly = Monthly.new
    @monthly.budgets.new
  end

  def create
    @monthly = Monthly.new(set_monthly)
    if @monthly.save
      redirect_to monthlies_path
    else
      render :new
    end
  end

  def edit
    @monthly = Monthly.find(params[:id])
  end

  def update
    @monthly = Monthly.find(params[:id])
    @monthly.update(set_monthly)
    redirect_to monthlies_path
  end

  def destroy
    @monthly = Monthly.find(params[:id])
    @monthly.destroy
    redirect_to monthlies_path
  end

  private

  def set_monthly
    params.require(:monthly).permit(:start_at, :finish_at, budgets_attributes: %i[id price category_id user_id]).merge(user_id: current_user.id)
  end
end
