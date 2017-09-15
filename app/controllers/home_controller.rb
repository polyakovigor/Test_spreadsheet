class HomeController < ApplicationController
  def index
    @excels = Excel.all
  end
end
