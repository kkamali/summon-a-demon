require 'pry'
class WelcomeController < ApplicationController
  before_action :is_logged_in?

  def home
    if user_signed_in?
      redirect_to user_path(current_user)
    end
  end
end