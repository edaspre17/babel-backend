class GameSession < ApplicationRecord
  belongs_to :child
  belongs_to :user
  belongs_to :mandate
end
