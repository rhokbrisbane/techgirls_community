Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'stories#index'

  get '/send_sms', to: 'sms#send'

  resources :stories, only: [:index, :create]
end
