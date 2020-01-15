class DemonsController < ApplicationController
  def index
    @demons = Demon.all
  end

  def show
    @demon = Demon.find(params[:id])
  end

  def new
    @demon = Demon.new
    @demon.sacrifices.build
  end

  def create
    @demon = Demon.create(demon_params)
  end

  private

  def demon_params
    params.require(:demon).permit(:name, :circle, sacrifices_attributes: [:name, :quantity])
  end
end