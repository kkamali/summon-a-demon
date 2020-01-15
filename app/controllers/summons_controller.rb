require 'pry'
class SummonsController < ApplicationController
  before_action :is_logged_in?

  def new
    if params.has_key?(:demon_id)
      @summon = Summon.new(demon_id: params[:demon_id])
    else
      @summon = Summon.new
    end
  end

  def create
    @summon = Summon.create(summon_params)
    binding.pry
    redirect_to user_path(current_user)
  end

  private

  def summon_params
    params.require(:summon).permit(:user_id, :demon_id, :sacrifice_id)
  end
end