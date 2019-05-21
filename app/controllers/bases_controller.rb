class BasesController < ApplicationController
  
  def create
  end
  
  def index
    @base = Base.new # base_paramsを設定する
    if @base.save
      flash[:success] = "拠点登録完了しました"
      redirect_to index_bases_url
    else
      render 'index'
    end
    @bases = Base.all
  end
end

  private 
    def base_params
      # params.require(:base).permit(:base_number, :name, :type )
    end
