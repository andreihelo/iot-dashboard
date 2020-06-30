Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dashboard#main'

  # Light actions
  get '/light', to: 'light#switch_plate'
  # Defaults only to JSON responses
  defaults format: :json do
    get '/light/on',  to: 'light#on'
    get '/light/off', to: 'light#off'

    post 'youtube/super_chat', to: 'youtube#super_chat'
  end
end
