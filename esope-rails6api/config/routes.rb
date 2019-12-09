Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :selected_pictures do
          collection do
            post 'ChoosenPictures(/:id)', to: 'selected_pictures#ChoosenPictures'
          end
      end
      resources :pictures
      resources :selected_categories do
        collection do
          post 'ChoosenCategories(/:id)', to: 'selected_categories#ChoosenCategories'
        end
    end
      resources :categories
      resources :game_sessions do
        collection do
          post 'latest(/:id)', to: 'game_sessions#latest'
        end
      end
      resources :mandates
      resources :children_contacts do
        collection do
          post 'listChildren(/:id)', to: 'children_contacts#listChildren'
          post 'listContacts(/:id)', to: 'children_contacts#listContacts'
        end
      end
      resources :handicaps_to_children do
        collection do 
          post 'myHandicaps(/:id)', to: 'handicaps_to_children#myHandicaps'
        end
      end
      resources :handicaps
      resources :professionals_to_children do
        collection do
          post 'listChildren(/:id)', to: 'professionals_to_children#listChildren'
          post 'lastPro(/:id)', to: 'professionals_to_children#lastPro'
          post 'listPro(/:id)', to: 'professionals_to_children#listPro'
        end
      end
      resources :children do
        collection do
          get 'listArchive', to: 'children#listArchive'
          post 'login', to: 'children#login'
        end
      end
      resources :users do
        collection do
          post 'login', to: 'users#login'
        end
      end
    end
  end
end

