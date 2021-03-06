class GameSession < ApplicationRecord
  before_save :default_values
 
  belongs_to :child
  belongs_to :user
  belongs_to :mandate


  def default_values
    self.start_date ||= DateTime.now
    self.version ||= 0
    self.finished_state ||= 0
    self.step_one ||= 0 
    self.step_two ||= 0
    self.step_three ||= 0
    self.guardian_comment ||= "Aucun commentaire"
    self.prof_comment ||= "Aucun commentaire"
  end
end
