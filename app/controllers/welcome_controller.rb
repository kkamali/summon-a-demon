require 'pry'
class WelcomeController < ApplicationController
  def home
    if user_signed_in?
      user_path(current_user)
    else
      redirect_to '/signup'
    end
  end
end