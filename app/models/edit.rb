class Edit < ApplicationRecord
    belongs_to :editing_program
    has_many :edits_photos
    has_many :photos, through: :edits_photos
end
