class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
    @no_nav = true
  end
end
