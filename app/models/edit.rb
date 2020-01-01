class Edit < ApplicationRecord
    belongs_to :editing_program
    has_many :photo_edits
    has_many :photos, through: :photo_edits
end
