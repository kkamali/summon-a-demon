require 'pry'
class UsersController < ApplicationController
  before_action :is_logged_in?

  def show
    @successes = current_user.summons.where(successful: true)
    @failures = current_user.summons.where(successful: false)
  end
end