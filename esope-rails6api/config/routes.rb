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
          get 'listChildren(/:id)', to: 'children_contacts#listChildren'
          get 'listContacts(/:id)', to: 'children_contacts#listContacts'
        end
      end
      resources :handicaps_to_children do
        collection do 
          get 'myHandicaps(/:id)', to: 'handicaps_to_children#myHandicaps'
        end
      end
      resources :handicaps
      resources :professionals_to_children
      resources :children
      resources :users do
        collection do
          get 'login', to: 'users#login'
        end
      end
    end
  end
end

