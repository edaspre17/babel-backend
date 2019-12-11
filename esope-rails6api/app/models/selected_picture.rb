class SelectedPicture < ApplicationRecord
  before_save :default_values
  belongs_to :picture
  belongs_to :game_session

  def default_values
    self.step_one_done ||= false
    self.step_two_done ||= false
    self.step_three_done ||= false
    self.note ||= "Pas de note"
    self.child_tag ||= false
    self.priority ||= 9
  end
end
