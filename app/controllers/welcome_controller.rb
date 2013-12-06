class WelcomeController < ApplicationController

  def index
  	loc = Location.find_by_zip "89031"
  	@forecast = ForecastIO.forecast(loc.lat, loc.long) unless loc.nil?
  end

end
