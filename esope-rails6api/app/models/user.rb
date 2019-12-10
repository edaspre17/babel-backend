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


    #has_secure_password saved in password_digest in user's table
    #Check with password_confirmation at the moment to connection
end
