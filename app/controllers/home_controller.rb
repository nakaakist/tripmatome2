class HomeController < ApplicationController
  def index
    @login = logged_in?
  end
end
