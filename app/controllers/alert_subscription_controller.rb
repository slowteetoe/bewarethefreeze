class AlertSubscriptionController < ApplicationController

  def subscribe
    @loc = Location.find_by(zip: params["zip"])
    if @loc.nil?
      @error = true
    else
      a = AlertSubscription.find_or_initialize_by(location: @loc, email: params["email"])
      a.save!
    end
    respond_to do |format|
      format.js
    end
  end

  def unsubscribe
  end
end
