Didar::Engine.routes.draw do
  resources :events
  resources :event_types
  resources :events
  resources :event_types
  resources :event_types
  resources :event_types
  resources :event_types
  resources :events
  resources :event_types
      namespace :api, :defaults => {:format => :json} do
        namespace :v1 do
          resources :event_types
          resources :events, as: :event
        end
      end
    end
