###
#  Copyright (c) Microsoft. All rights reserved. Licensed under the MIT license.
#  See LICENSE in the project root for license information.
##

Rails.application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#index'
  get '/login', to: 'pages#login'

  # This is where we send people to authenticate with OmniAuth.
  get '/auth/azureactivedirectory', as: :sign_in

  # This is where we are redirected if OmniAuth successfully authenticates
  # the user.
  match '/auth/:provider/callback', to: 'pages#callback', via: [:get, :post]

  match '/send_mail', to: 'pages#send_mail', via: [:post]

  match '/disconnect', to: 'pages#disconnect', via: [:get]
  match '/get_calendar', to: 'pages#get_calendar', via: [:get]
  match '/get_calendar_events', to: 'pages#get_calendar_events', via: [:get]
  match '/create_event', to: 'pages#create_event', via: [:post]
  match '/delete_event', to: 'pages#delete_event', via: [:delete]
  match '/calendar', to: 'pages#calendar', via: [:get]
end
