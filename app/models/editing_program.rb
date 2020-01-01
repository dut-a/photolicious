class EditingProgram < ApplicationRecord
    has_many :edits_photos
    has_many :photos, through: :edits_photos
end
