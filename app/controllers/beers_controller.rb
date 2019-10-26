class BeersController < ApplicationController

  before_action :set_beer, only: [:show]

  def index
    @beers = Beer.all
  end

  def show
    @numberofperson = @beer.numberofperson
  end

  def new
    @beer = Beer.new
  end

  def create
    @beer = Beer.new(beer_params)
    if @beer.save
      redirect_to beer_path(@beer)
    else
      render "new"
    end
  end

  private

  def set_beer
    @beer = Beer.find(params[:id])
  end

  def beer_params
    params.require(:beer).permit(:name, :photo)
  end

end
