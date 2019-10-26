class NumberOfPeopleController < ApplicationController

  def new
    @numberofperson = NumberOfPerson.new
    @beer = Beer.find(params[:beer_id])
  end

  def create
    @numberofperson = NumberOfPerson.new(numberofperson_params)
    @beer = Beer.find(params[:beer_id])
    @numberofperson.beer = @beer
  end

  def destroy
    @numberofperson = NumberOfPerson.find(params[:id])
    @numberofperson.destroy
    redirect_to request_refferer unless request_refferer.nil?
  end

  private

  def numberofperson_params
    params.required(:numberofperson).permit(:description, occasion_id)
  end


end
