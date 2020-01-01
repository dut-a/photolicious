class Photo < ApplicationRecord
    belongs_to :photographer
    belongs_to :season
    has_many :edits_photos
    has_many :edits, through: :edits_photos
    has_many :editing_programs, through: :edits
end


