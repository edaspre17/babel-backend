class Child < ApplicationRecord

    before_save :default_values
    validates :name, presence: true
    validates :surname, presence: true
    validates :birthday, presence: true
    validates :lang, presence: true
    validates :hand, presence: true
    validates :school, presence: true
    validates :school_lvl, presence: true
    validates :school_type, presence: true
    
    def default_values
        self.archived ||= false
        self.version ||=0
        self.imagepath ||='default_child.png'
        
    end
end
