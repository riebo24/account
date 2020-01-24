class MonthliesController < ApplicationController
  # before_action :set_post, only: :show  showアクションんに入れた

  def index
    @monthly = current_user.monthlies.limit(100)   
  end

  def show
    @monthly = Monthly.find(params[:id])
    # @posts :@monthliesの期間の間に作成したpostを抽出(where)。category_id毎の新たなハッシュを作る（group_by）。その中から、２番目と最後[1..-1]を抽出する。それを配列の最初[0]に加える。最後のv[0]は不明。
    # @posts = current_user.posts.where(date: @monthly.start_at..@monthly.finish_at).group_by{ |i| i[:category_id]}.map{ |k, v| v[1..-1].each {|x| v[0][:p_price] += x[:p_price]}
    # v[0]} 
    @posts = current_user.posts.where(date: @monthly.start_at..@monthly.finish_at)

    @budgets = @monthly.budgets #monthliesに紐づいているbudgetsをカテゴリー毎に分類
    @categories = current_user.categories

    # @data= @categories.name
    # binding.pry

  end

  def new
    @monthly = Monthly.new
    @monthly.budgets.new
  end

  def create

    @monthly = Monthly.new(set_monthly)
    # binding.pry
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
      params.require(:monthly).permit(:start_at, :finish_at, budgets_attributes:[:id, :price, :category_id]).merge(user_id: current_user.id)
    end

end
