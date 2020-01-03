class Photo < ApplicationRecord

  mount_uploader :image, ImageUploader

  belongs_to :photographer
  belongs_to :season
  has_many :photo_edits, :dependent => :destroy
  has_many :edits, through: :photo_edits
  has_many :editing_programs, through: :edits

  # Validations
  validates :title, presence: true, length: {minimum: 3}
  validates :image, presence: true, file_size: { less_than: 10.megabytes }
  validates :description, presence: true, length: {minimum: 5}
  validates :season_id, presence: true
  validates :photographer_id, presence: true


  # scopes
  scope :sorted, lambda { order("title ASC") }
  scope :newest_first, lambda { order("created_at DESC") }
  scope :top_15, lambda { limit(15) }

  def date_only
    taken_on.strftime("%B #{taken_on.day.ordinalize}, %Y")
  end

  def get_image_path
    return self.image? ? self.image.url : self.remote_url
  end

end


