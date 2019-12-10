class User < ApplicationRecord
    before_save :default_values
    validates :email, uniqueness: true, presence: true
    validates_format_of :email, with: /@/
    validates :pwd, presence: true
    
    def default_values
        self.inserts_date ||= DateTime.now
        self.inserts_date ||= 0
        self.version ||= 0
        self.imagepath ||= 'default.png'
    end
end
