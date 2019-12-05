Rails.application.routes.draw do
  # -> Mapping automatique de api
  namespace :api, defaults: { format: :json } do # Travail avec du JSON
    namespace :v1 do # 127.0.0.1:3000/api/v1
      # Liste des ressources -> 127.0.0.1:3000/api/v1/ressource
    end
  end
end
