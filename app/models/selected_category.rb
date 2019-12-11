class SelectedCategory < ApplicationRecord
  before_save :default_values
  belongs_to :category
  belongs_to :game_session

  def default_values
    self.status ||= false
  end
end
