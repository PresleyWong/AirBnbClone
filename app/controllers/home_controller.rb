class HomeController < ApplicationController
  def index
  	@places = Place.first(9)
  end
end
