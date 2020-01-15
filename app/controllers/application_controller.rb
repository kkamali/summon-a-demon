class ApplicationController < ActionController::Base
  def is_logged_in?
    redirect_to '/signup' unless user_signed_in?
  end
end
