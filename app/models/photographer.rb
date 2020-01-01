class Photographer < ApplicationRecord    
    has_many :photos
    has_many :seasons, through: :photos
end
