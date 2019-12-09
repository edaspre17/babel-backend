class SelectedCategory < ApplicationRecord
  belongs_to :category
  belongs_to :game_session
end
