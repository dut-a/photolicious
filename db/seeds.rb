# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# helper method
def make_place
    (Faker::Address.city + ", " + Faker::Address.country)
end

def say(txt)
    puts(txt)
end

# Clear data
say("BEGIN: Removing data...")
Photographer.destroy_all
EditingProgram.destroy_all
Season.destroy_all
Photo.destroy_all
Edit.destroy_all
PhotoEdit.destroy_all
say("END: Removing data...")


say("BEGIN: Seeding the DB with sample data...")
# - Photographes
10.times do
    Photographer.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        profession: Faker::Company.profession,
        place_of_operation: make_place
    )
end

# Editing Programs
# https://enviragallery.com/best-photo-editing-software-for-photographers/
EditingProgram.add_sample_programs

# Seasons
seasons = ["Fall", "Spring", "Summer", "Winter"]
seasons.each { |s| Season.create(name: s) }


# - Photos
s = Season.all
p = Photographer.all

200.times do 
    Photo.create(
        title: Faker::Hipster.word,
        remote_url: Faker::Internet.url,
        description: Faker::Lorem.sentence,
        copyright: Faker::Lorem.sentences,
        taken_on: Time.now,
        taken_in: make_place,
        season_id: s.sample.id,
        photographer_id: p.sample.id
    )
    sleep(1) # pause for 1 sec to vary 'taken_on' time.
end

# Edits
ph = Photo.all
ep = EditingProgram.all
ed = Edit.all
12.times do
    Edit.create(
        editor_name: Faker::Name.name,
        photo_id: ph.sample.id,
        editing_program_id: ep.sample.id
    )
end

# Photo Edits
20.times do
    PhotoEdit.create(
        edit_id: ed.sample.id,
        photo_id: ph.sample.id,
        changes_made: Faker::Lorem.paragraphs
    )
end

say("END: Seeding the DB with sample data...")



