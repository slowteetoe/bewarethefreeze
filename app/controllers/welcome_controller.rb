class WelcomeController < ApplicationController

  def index
  	@loc = Location.find_by_zip "89031"
  	@forecast = ForecastIO.forecast(@loc.lat, @loc.long)
    @forecast ||= { "currently" => { "temperature" => "???" } }
  end

  def forecast
    @forecast = ForecastIO.forecast(params["lat"], params["lon"])
    respond_to do |format|
      format.js
    end
  end

end
