class SummonsController < ApplicationController
  def new
    @summon = Summon.new(user_id: params[:user_id])
  end

  def create
    @summon = Summon.create(summon_params)
    redirect_to user_path(current_user)
  end

  private

  def summon_params
    params.require(:summon).permit(:user_id, :demon_id)
  end
end