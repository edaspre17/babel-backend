class Picture < ApplicationRecord
  before_save :default_values
  belongs_to :category

  def default_values
    self.path ||= "/Default_picture.png"
    self.description ||= "Pas de description"
  end
end
