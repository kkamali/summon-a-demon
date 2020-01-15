require 'pry'
class UsersController < ApplicationController
  before_action :is_logged_in?

  def show
    @summons = current_user.summons
  end
end