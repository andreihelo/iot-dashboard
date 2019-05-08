class LightController < ApplicationController
  def menu
  end

  def on
    flash.now[:success] = 'The light has been turned <strong>ON</strong>!'.html_safe
    puts '[IotDashboard] Turning the light on.'
    # flash.now You turned OFF the light
    # RPi::GPIO.set_high 21
  end

  def off
    flash.now[:alert] = 'The light has been turned <strong>OFF</strong>!'.html_safe
    puts '[IotDashboard] Turning the light off.'
    # RPi::GPIO.set_low 21
  end
end
