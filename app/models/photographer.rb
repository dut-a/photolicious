class Photographer < ApplicationRecord    
    has_many :photos
    has_many :seasons, through: :photos



    def name
        return "#{first_name} #{last_name}"
    end

end
