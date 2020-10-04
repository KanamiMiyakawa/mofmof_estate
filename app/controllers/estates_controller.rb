class EstatesController < ApplicationController
  before_action :set_estate, only: [:show, :edit, :update, :destroy]

  def index
    @estates = Estate.all
  end

  def show
  end

  def new
    @estate = Estate.new
  end

  def edit
  end

  def create
    @estate = Estate.new(estate_params)
    if @estate.save
      redirect_to @estate, notice: '物件情報が作成されました'
    else
      render :new
    end
  end

  def update
    if @estate.update(estate_params)
      redirect_to @estate, notice: '物件情報が更新されました'
    else
      render :edit
    end
  end

  def destroy
    @estate.destroy
    redirect_to estates_url, notice: '物件情報を削除しました'
  end

  private

  def set_estate
    @estate = Estate.find(params[:id])
  end

  def estate_params
    params.require(:estate).permit(:name, :rent, :place, :age, :other)
  end
end
