class HomeController < ApplicationController
  # before_action :authenticate_user

  def index
    if current_user
      # get_queries
    end
  end
end
