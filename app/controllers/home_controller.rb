class HomeController < ApplicationController
  def index
    @users = User.all
  end

  def search
    # params[:question]
    # params[:adjectives]
    # params[:theme]
  end
end
