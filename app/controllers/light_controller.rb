class LightController < ApplicationController
  # Renders the switch plate view
  def switch_plate
  end

  def on
    message = '[IotDashboard] Turning the light on.'
    puts message
    # flash.now You turned OFF the light
    # RPi::GPIO.set_high 21

    render status: 200, json: { message: message }
  end

  def off
    message = '[IotDashboard] Turning the light off.'
    puts message
    # RPi::GPIO.set_low 21

    render status: 200, json: { message: message }
  end
end
