class LightController < ApplicationController
  def on
    puts '[IotDashboard] Turning the light on.'
    # flash.now You turned OFF the light
    # RPi::GPIO.set_high 21
  end

  def off
    puts '[IotDashboard] Turning the light off.'
    # RPi::GPIO.set_low 21
  end
end
