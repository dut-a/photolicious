class Photo < ApplicationRecord
    belongs_to :photographer
    belongs_to :season
    has_many :photo_edits
    has_many :edits, through: :photo_edits
    has_many :editing_programs, through: :edits
end


