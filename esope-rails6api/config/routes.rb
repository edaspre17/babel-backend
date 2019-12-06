

Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :selected_pictures
      resources :pictures
      resources :selected_categories
      resources :categories
      resources :game_sessions
      resources :mandates
      resources :handicap_to_children
      resources :handicaps
      resources :child_contacts
      resources :professionnal_to_children
      resources :children
      resources :users
    end
  end
end

