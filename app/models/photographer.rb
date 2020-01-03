class Photographer < ApplicationRecord    
    has_many :photos, :dependent => :destroy
    has_many :seasons, through: :photos


    # Validations
    validates :first_name, presence: true, length: {minimum: 2}
    validates :last_name, presence: true, length: {minimum: 2}

    def name
        return "#{first_name} #{last_name}"
    end

end
