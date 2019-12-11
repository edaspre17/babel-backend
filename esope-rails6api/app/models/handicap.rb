class Handicap < ApplicationRecord
    before_save :default_values

    def default_values
        self.description ||= "Pas de description"
    end
end
