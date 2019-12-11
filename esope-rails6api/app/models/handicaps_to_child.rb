class HandicapsToChild < ApplicationRecord
  before_save :default_values

  belongs_to :child
  belongs_to :handicap
  def default_values
    self.comment ||= "Aucun commentaire"
  end
end
