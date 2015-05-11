Rails.application.routes.draw do
  resources :event_types
  resources :events
  resources :events
  resources :events
  resources :events
  resources :events
  resources :events
  resources :events
  resources :events
  namespace :api, :defaults => {:format => :json} do
    namespace :v1 do
      resources :event_types
      resources :events
    end
  end
end
