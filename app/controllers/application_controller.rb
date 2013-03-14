class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :setup_user

  private

  def setup_user
    @current_user = user_signed_in? ? current_user : GuestUser.new
  end
end
