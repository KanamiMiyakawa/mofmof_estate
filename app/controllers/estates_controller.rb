class EstatesController < ApplicationController
  before_action :set_estate, only: [:show, :edit, :update, :destroy]

  def index
    @estates = Estate.all
  end

  def show
    @stations = @estate.stations
    @station_count = 0
  end

  def new
    @estate = Estate.new
    2.times { @estate.stations.build }
    @station_count = 0
  end

  def edit
    @estate.stations.build
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
    params.require(:estate).permit(
      :name,
      :rent,
      :place,
      :age,
      :other,
      stations_attributes: [
        :line,
        :station_name,
        :time,
        :estate_id,
        :id,
        :_destroy,
      ],
    )
  end
end
