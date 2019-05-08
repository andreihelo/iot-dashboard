Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dashboard#main'

  # Light actions
  get '/light',     to: 'light#menu'
  get '/light/on',  to: 'light#on'
  get '/light/off', to: 'light#off'
end
