class BasesController < ApplicationController
  
  def create
    @base = Base.new(base_params)
    @base.save
    flash[:success] = "拠点登録に成功しました"
    redirect_to bases_url
  end
  
  def update
    @base = Base.find(params[:id])
    @base.update_attributes(base_params)
    flash[:success] = "拠点修正に成功しました"
    redirect_to bases_url
  end
  
  def destroy
    @base = Base.find(params[:id])
    @base.destroy
    flash[:success] = "削除しました"
    redirect_to bases_url
  end
  
  def index
    @base = Base.new
    @bases = Base.all
  end


  private 
    def base_params
      params.require(:base).permit(:base_number, :base_name, :attendance_type )
    end


end