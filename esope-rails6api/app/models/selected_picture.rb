class SelectedPicture < ApplicationRecord
  belongs_to :picture
  belongs_to :game_session
end
