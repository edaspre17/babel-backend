class Mandate < ApplicationRecord
  before_save :default_values
  belongs_to :child

  def default_values
    self.instigator ||= "Pas de'instigateur"
    self.demand ||= "Pas de demande"
  end
end
