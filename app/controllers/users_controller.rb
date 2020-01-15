require 'pry'
class UsersController < ApplicationController
  def show
    @summons = current_user.summons
  end
end