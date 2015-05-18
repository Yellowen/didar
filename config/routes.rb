Didar::Engine.routes.draw do
      namespace :api, :defaults => {:format => :json} do
        namespace :v1 do
          resources :event_types
          resources :events
        end
      end
    end
