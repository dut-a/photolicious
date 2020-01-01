class CreateJoinTableEditsPhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :edits_photos do |t|
      t.integer :edit_id
      t.integer :photo_id
      t.index [:edit_id, :photo_id]
      t.index [:photo_id, :edit_id]

      t.timestamps
    end
  end
end
