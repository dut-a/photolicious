class EditingProgram < ApplicationRecord

    require 'csv'

    has_many :edits_photos
    has_many :photos, through: :edits_photos

    def self.add_sample_programs
        prog_file = "app/assets/txt/photo_editing_programs.csv"
        CSV.foreach(prog_file, :headers => true) { |r| self.create(r.to_hash) }
    end

end


