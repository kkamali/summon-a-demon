require 'pry'
class DemonsController < ApplicationController
  before_action :is_logged_in?, only: [:new, :create]

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
    redirect_to demon_path(@demon)
  end

  private

  def demon_params
    params.require(:demon).permit(:name, :title, sacrifices_attributes: [:name, :quantity])
  end
end