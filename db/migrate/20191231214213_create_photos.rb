class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :title
      t.string :url
      t.text :description
      t.text :copyright
      t.datetime :taken_on
      t.string :taken_in
      t.integer :season_id
      t.integer :photographer_id

      t.timestamps
    end
  end
end
