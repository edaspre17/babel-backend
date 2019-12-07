

Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :selected_pictures
      resources :pictures
      resources :selected_categories
      resources :categories
      resources :game_sessions
      resources :mandates
      resources :children_contacts do
        collection do
          get 'contacts(/:id)', to: 'children_contacts#contacts'
        end
      end
      resources :handicaps_to_children
      resources :handicaps
      resources :professionals_to_children
      resources :children
      resources :users
    end
  end
end

