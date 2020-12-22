class YoutubeController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :validate_request

  def super_chat
    message = '[IotDashboard] Super Chat received!'
    puts message
    RPi::GPIO.set_high 16
    sleep 5
    RPi::GPIO.set_low 16

    render status: 200, json: { message: message }
  end

  def super_shot
    message = '[IotDashboard] Super Shot received! Burp!'
    puts message
    RPi::GPIO.set_high 20
    sleep 1
    RPi::GPIO.set_low 20

    render status: 200, json: { message: message }
  end

  private

  def request_params
    params.permit(:token)
  end

  def validate_request
    if ENV['youtube_auth_token'].present? && request_params[:token] == ENV['youtube_auth_token']
      return
    end

    render status: 401, json: { error: '[IotDashboard] Unauthorized request.' }
  end
end
