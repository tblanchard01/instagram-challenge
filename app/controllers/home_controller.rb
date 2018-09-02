
class HomeController < ApplicationController
  def index
    redirect_to vposts_path if user_signed_in?
  end
end
