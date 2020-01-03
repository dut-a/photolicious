class Photo < ApplicationRecord
    belongs_to :photographer
    belongs_to :season
    has_many :photo_edits
    has_many :edits, through: :photo_edits
    has_many :editing_programs, through: :edits

    # scopes
    scope :sorted, lambda { order("title ASC") }
    scope :newest_first, lambda { order("created_at DESC") }
    scope :top_5, lambda { limit(5) }

    def date_only
        taken_on.strftime("%B #{taken_on.day.ordinalize}, %Y")
    end

end


