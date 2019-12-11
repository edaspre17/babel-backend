class ProfessionalsToChild < ApplicationRecord
  before_save :default_values
  belongs_to :user
  belongs_to :child

  def default_values
    self.start_care_date ||= DateTime.now
end
