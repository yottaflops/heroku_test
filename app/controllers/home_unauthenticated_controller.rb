class HomeUnauthenticatedController < ApplicationController

  def index
    @search = RegisterSearch.new
  end
end
