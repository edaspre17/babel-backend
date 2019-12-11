class GameSession < ApplicationRecord
  belongs_to :child
  belongs_to :user
  belongs_to :mandate


  def default_values
    self.startdate ||= DateTime.now
    #self.
    #self.
    #self. 
    #self.
    #self.
    #self.
    #self.
    #self.
    #self.
end
end
